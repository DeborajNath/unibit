import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Don't have an account?"),
            TextButton(
              child: const Text(
                'Sign up now',
                style: TextStyle(
                  color: Color.fromRGBO(255, 139, 34, 100),
                ),
              ),
              onPressed: () {
                //signup screen
              },
            )
          ],
        ),
      )),
    );
  }
}
