import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.yellow,
        colorScheme: ColorScheme.dark().copyWith(
          primary: Colors.yellow,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: 'Sign',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                children: <TextSpan>[
                  TextSpan(
                    text: 'up',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenreSelectionPage(),
                  ),
                );
              },
              child: Text('Select Genre'),
            ),
          ],
        ),
      ),
    );
  }
}

class GenreSelectionPage extends StatefulWidget {
  @override
  _GenreSelectionPageState createState() => _GenreSelectionPageState();
}

class _GenreSelectionPageState extends State<GenreSelectionPage> {
  String selectedGenre = 'Fiction'; // Default genre selection

  List<String> genres = [
    'Fiction',
    'Novel',
    'Narrative',
    'Historical Fiction',
    'Non-Fiction',
    'Mystery',
    'Horror',
    "Children's Literature",
    'Thriller',
    'Sci-fi',
    'Romantic',
    'History',
    'Poetry',
    'Biography',
    'Crime',
    'Autobiography',
    'Cookbook',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Genre',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Genre',
                  border: OutlineInputBorder(),
                ),
                value: selectedGenre,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedGenre = newValue!;
                  });
                },
                items: genres.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: selectedGenre == value ? Colors.yellow : null,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Do something with the selected genre
                print('Selected Genre: $selectedGenre');
              },
              child: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
