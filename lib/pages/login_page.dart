import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String name = "";
  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoute.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/hey.png',
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User Name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username or Email field is required";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password field is required.";
                        } else if (value.length < 6) {
                          return "Password must contain at least 6 characters.";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Material(
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                color: Colors.deepPurple,
                child: InkWell(
                  //moving to the home page
                  onTap: () => moveToHomePage(context),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    alignment: Alignment.center,
                    height: 50.0,
                    width: changeButton ? 50.0 : 150.0,
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "LogIn",
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
