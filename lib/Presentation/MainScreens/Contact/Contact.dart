import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:unibit/Presentation/MainScreens/Contact/MainBody.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 248, 249, 100),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: DottedBorder(
            color: const Color(0xffFFBE00),
            strokeWidth: 1,
            borderType: BorderType.Circle,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(14),
            child: Row(
              children: [
                Text(
                  "Hello, Dipak",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/unibit.png'),
              )),
          const Expanded(child: MainBody())
        ],
      ),
    );
  }
}
