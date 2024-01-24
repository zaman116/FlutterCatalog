import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: TextButton.styleFrom(),
                    onPressed: (){},
                    child: const Text("Login"),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
