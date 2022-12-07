import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormDemo extends StatelessWidget {
  void _submit() {
    print("Button Pressed");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ConstrainedBox(
                  // constraints: BoxConstraints.tight(const Size(200, 50)),
                  constraints: BoxConstraints.loose(Size.infinite),
                  child: TextFormField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10)
                    ],
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter Name",
                      labelText: "Name",
                    ),
                    onSaved: (String? value) {
                      debugPrint('Value for field saved as "$value"');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.loose(Size.infinite),
                  child: TextFormField(
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10)
                    ],
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ),
              ),
              // TextFormField(
              //   decoration: InputDecoration(
              //       icon: Icon(Icons.password),
              //       hintText: "Enter Password",
              //       labelText: "Password"),
              // ),
              ElevatedButton(onPressed: _submit, child: Text("Press"))
            ],
          ),
        ));
  }
}
