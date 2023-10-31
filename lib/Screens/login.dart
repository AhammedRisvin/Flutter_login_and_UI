import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login_app/Screens/bottom_navigation.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(15.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Sign in",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return "Enter a valid email";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          controller: _passwordController,
                          obscureText: !_showPassword,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                              child: Icon(_showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password cant be empty";
                            } else {
                              return null;
                            }
                          }),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            checkLogin(context);
                          } else {
                            log("Data empty".toString());
                          }
                        },
                        icon: const Icon(Icons.check),
                        label: const Text("Login"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final username = "ahammedrisvin@gmail.com";

  final password = '123';

  void checkLogin(BuildContext ctx) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _username = _usernameController.text;
    // ignore: no_leading_underscores_for_local_identifiers
    final _password = _passwordController.text;

    if (_username == username && _password == password) {
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx1) => const ScreenbottomNavigationBar()),
      );
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 2, 117, 0),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text("Successfully logged in"),
        ),
      );
      // Go To Homepage
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 225, 16, 1),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text("Username and password does not match"),
        ),
      );
    }
  }
}
