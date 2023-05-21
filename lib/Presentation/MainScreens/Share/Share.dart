import 'package:flutter/material.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share'),
      ),
      body: const Center(
        child: Text(
          'Share Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
