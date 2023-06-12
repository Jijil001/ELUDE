import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elude',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.yellow,
        colorScheme: ColorScheme.dark().copyWith(
          primary: Colors.yellow,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: AboutPage(),
    );
  }
  
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Elude',
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Elude is an E-book reader and publisher.\n'
                'Elude can keep a library of published books to read.\n'
                'Elude can be used to write and publish your works.\n'
                'The main purpose of Elude is to make reading and writing books easy.\n'
                '\n'
                'Created by Team 19',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
