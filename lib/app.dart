import 'package:flutter/material.dart';
import 'package:student_detail/view/Dashboard.dart';
import 'package:student_detail/view/add_student.dart';
import 'package:student_detail/view/display_student.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/addRoute': (context) => const AddStudent(),
        '/displayRoute': (context) => const DisplayStudent(),
      },
    );
  }
}
