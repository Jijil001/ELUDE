import 'package:flutter/material.dart';

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
      home: UserSelection(),
    );
  }
}

class UserSelection extends StatefulWidget {
  const UserSelection({Key? key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  bool isReaderSelected = false;
  bool isWriterSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0), // Adjust the padding value as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'What do you want to be in this ',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'App',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 165, 0),
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 60,
                        icon: Icon(
                          Icons.person,
                          color: isReaderSelected ? Colors.orange : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isReaderSelected = !isReaderSelected;
                            isWriterSelected = false;
                          });
                        },
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Reader',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 60,
                        icon: Icon(
                          Icons.create,
                          color: isWriterSelected ? Colors.orange : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isWriterSelected = !isWriterSelected;
                            isReaderSelected = false;
                          });
                        },
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Writer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                
                onPressed: () {
                  if (isReaderSelected) {
                    // Reader selected
                    // Add your logic for reader
                  } else if (isWriterSelected) {
                    // Writer selected
                    // Add your logic for writer
                  } else {
                    // No option selected
                  }
                },
                child: Text('Continue'),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

