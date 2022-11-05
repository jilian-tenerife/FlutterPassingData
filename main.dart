import 'package:flutter/material.dart';

import 'SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _data = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5d3a6f),
      appBar: AppBar(
        title: const Text("Screen 1"),
        backgroundColor: const Color(0xffaa98b5),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20)),
          SizedBox(
            width: 300,
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: _data,
              decoration: const InputDecoration(
                  fillColor: Color(0xff897098),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 5, color: Color(0xffcbc1d2))),
                  hintText: 'Enter Data',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondScreen(data: _data.text)));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF897098)),
              child: Text("Send Data")),
        ],
      ),
    );
  }
}
