import 'package:flutter/material.dart';

import 'animated_text_widget.dart';

class StackPositioned extends StatefulWidget {
  const StackPositioned({super.key});

  @override
  State<StackPositioned> createState() => _StackPositionedState();
}

class _StackPositionedState extends State<StackPositioned> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  SubmitForm() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack and Position"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.blue),
            )),
            Positioned(
                child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepOrange,
            )),
            Positioned(
                top: 50,
                left: 45,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Flexible(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Flexible(child: AnimatedWidgetxxx()),
                            Flexible(
                              flex: 2,
                              child: Form(
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
                                              final isvalid = _formKey
                                                  .currentState!
                                                  .validate();
                                              if (isvalid) {
                                                _formKey.currentState?.save();
                                              }
                                              SubmitForm();
                                            },
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor),
                                            ))
                                      ],
                                    ),
                                  )),
                            )
                          ]),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
