import 'package:flutter/material.dart';
import 'package:unibit/Presentation/LoginPage/BackGround.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 1,
                color: Color.fromRGBO(248, 248, 249, 100),
                child: FractionallySizedBox(
                  widthFactor: 0.3,
                  heightFactor: 0.3,
                  child: Image.asset(
                    "assets/logo.png",
                  ),
                )),
            const Expanded(child: WhiteBackground())
          ],
        ),
      )),
    );
  }
}
