import 'package:flutter/material.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/selectgenre.dart';
import 'package:untitled1/pages/signupgage.dart';
import 'package:untitled1/pages/trail.dart';
import 'package:untitled1/pages/userselection.dart';
import 'package:untitled1/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const LoadingPage(),
    );
  }
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Trail(),
    );
  }
}
