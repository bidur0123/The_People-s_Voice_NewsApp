import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The People's Voice"),
      ),
      body: const Center(
        child: Text (
          "No Notification",
          style: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}

