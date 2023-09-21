import 'package:flutter/material.dart';

class UserFormsxyz extends StatefulWidget {
  const UserFormsxyz({super.key});

  @override
  State<UserFormsxyz> createState() => _UserFormsxyzState();
}

class _UserFormsxyzState extends State<UserFormsxyz> {
  final _formKey = GlobalKey<FormState>();

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  SubmitForm() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Form")),
      body: Column(children: [
        Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter First Name",
                    ),
                    key: const ValueKey('firstName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'First Name Should Not Be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Last Name",
                    ),
                    key: const ValueKey('lastName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Last Name Should Not Be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter email",
                    ),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'email Should Not Be Empty';
                      } else if (!value!.contains!("@")) {
                        return 'Please Enter Valid email Address ';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                    ),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Password Should Not Be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final isvalid = _formKey.currentState!.validate();
                        if (isvalid) {
                          _formKey.currentState?.save();
                        }
                        SubmitForm();
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ))
                ],
              ),
            ))
      ]),
    );
  }
}
