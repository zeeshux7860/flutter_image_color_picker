import 'package:flutter/material.dart';
import 'package:image_color_picker/image_color_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Image'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NetworkImageBG(
                          networkpath:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/The_Indian_Pariah_Dog.jpg/220px-The_Indian_Pariah_Dog.jpg',
                        )));
          },
        ),
      ),
    );
  }
}
