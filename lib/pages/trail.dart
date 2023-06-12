import 'package:flutter/material.dart';
// import 'package:screen_brightness/screen_brightness.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Trail(),
    );
  }
}

class Trail extends StatefulWidget {
  const Trail({Key? key});

  @override
  State<Trail> createState() => _TrailState();
}

class _TrailState extends State<Trail> {
  bool isReaderSelected = false;
  bool isWriterSelected = false;
  bool isDarkMode = true;
  bool isEyeProtectionEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Good Afternoon',
          style: TextStyle(
            color:Colors.orange
          ),),
          
          leading: PopupMenuButton<String>(
            icon: Icon(Icons.menu),
            onSelected: (value) {
              // Handle menu option selection
              if (value == 'community') {
                // Handle community option
              } else if (value == 'theme') {
                // Handle theme option
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              } else if (value == 'eye_protection') {
                // Handle eye protection option
                setState(() {
                  isEyeProtectionEnabled = !isEyeProtectionEnabled;
                });
              } else if (value == 'about') {
                // Handle about option
              } else if (value == 'faq') {
                // Handle FAQ option
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'community',
                child: Text(
                  'Community',
                  style: TextStyle(fontSize: 16), // Set the desired font size
                ),
              ),
              PopupMenuItem<String>(
                value: 'theme',
                child: Container(
                  height: 60, // Set the desired height
                  child: ListTile(
                    leading: Icon(
                      isDarkMode ? Icons.dark_mode : Icons.light_mode,
                      size: 24, // Set the desired icon size
                    ),
                    title: Text(
                      isDarkMode ? 'Dark Mode' : 'Light Mode',
                      style: TextStyle(fontSize: 16), // Set the desired font size
                    ),
                    onTap: () {
                      setState(() {
                        isDarkMode = !isDarkMode;
                      });
                    },
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'eye_protection',
                child: Container(
                  height: 60, // Set the desired height
                  child: ListTile(
                    leading: Icon(
                      isEyeProtectionEnabled ? Icons.visibility : Icons.visibility_off,
                      size: 24, // Set the desired icon size
                    ),
                    title: Text(
                      isEyeProtectionEnabled ? 'Eye Protection On' : 'Eye Protection Off',
                      style: TextStyle(fontSize: 16), // Set the desired font size
                    ),
                    onTap: () {
                      setState(() {
                        isEyeProtectionEnabled = !isEyeProtectionEnabled;
                      });
                    },
                  ),
                ),
              ),
              PopupMenuItem<String>(
                value: 'about',
                child: Text(
                  'About',
                  style: TextStyle(fontSize: 16), // Set the desired font size
                ),
              ),
              PopupMenuItem<String>(
                value: 'faq',
                child: Text(
                  'FAQ',
                  style: TextStyle(fontSize: 16), // Set the desired font size
                ),
              ),
            ],
          ),
        ),
        body:Column(

        )
      ),
    );
  }
}
