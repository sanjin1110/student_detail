import 'package:flutter/material.dart';

class DisplayStudent extends StatefulWidget {
  const DisplayStudent({super.key});

  @override
  State<DisplayStudent> createState() => _DisplayStudentState();
}

class _DisplayStudentState extends State<DisplayStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("student details"),
      ),
    );
  }
}
