// ignore: file_names
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addRoute');
            },
            child: const Text("Add Student"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/displayRoute');
            },
            child: const Text("Display Student"),
          ),
        ],
      ),
    );
  }
}
