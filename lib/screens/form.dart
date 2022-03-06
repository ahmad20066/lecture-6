// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool isObscure = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("email"),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.red),
                      prefixIcon: Icon(Icons.person)),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  onSaved: (value) {
                    print(value);
                  },
                ),
                // Row(
                //   children: [
                //     Flexible(
                //       child: TextFormField(
                //         decoration: InputDecoration(
                //             label: Text("password"),
                //             hintText: "Enter your password",
                //             hintStyle: TextStyle(color: Colors.red),
                //             prefixIcon: Icon(Icons.person)),
                //         obscureText: isObscure,
                //       ),
                //     ),
                //     IconButton(
                //         onPressed: () {
                //           setState(() {
                //             isObscure = !isObscure;
                //           });
                //         },
                //         icon: Icon(
                //             isObscure ? Icons.visibility : Icons.visibility_off)),

                //   ],
                // ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("email"),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.red),
                      prefixIcon: Icon(Icons.person)),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                TextButton(
                    onPressed: () {
                      _formKey.currentState!.save();
                    },
                    child: Text("submit"))
              ],
            )),
      ),
    );
  }
}
