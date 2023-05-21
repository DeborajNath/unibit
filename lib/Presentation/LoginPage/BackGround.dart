import 'package:flutter/material.dart';

import 'InputField.dart';

class WhiteBackground extends StatelessWidget {
  const WhiteBackground({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: const Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: InputField())
        ],
      ),
    );
  }
}
