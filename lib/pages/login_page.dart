import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png"),
              const SizedBox(height: 40),
              const Text("Welcome", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username"
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"
                      ),
                    ),
                    const SizedBox(height: 40),
                    /*ElevatedButton(
                      style: TextButton.styleFrom(minimumSize: const Size(250, 40)),
                      onPressed: (){
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: const Text("Login"),
                    ),*/
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                          color: Colors.deepPurple,
                        ),
                        child: changeButton?
                        const Icon(Icons.done, color: Colors.white,) :
                        const Text('Login', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
