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
        child: RaisedButton(
          child: Text('View Image'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NetworkImageBG(
                          networkpath:
                              'https://media-exp1.licdn.com/dms/image/C5122AQEZISWpS2kJLg/feedshare-shrink_800/0?e=1588809600&v=beta&t=udluuJuG3m5_Gv94Gxt9ftp51oMa4Dh2mspBAMO2_nA',
                        )));
          },
        ),
      ),
    );
  }
}
