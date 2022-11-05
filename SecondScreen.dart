import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String data;

  SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5d3a6f),
        appBar: AppBar(
          title: const Text("Screen 2"),
          backgroundColor: const Color(0xffaa98b5),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20)),
            Text(
              "${data}",
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF897098)),
                child: Text("Back")),
          ],
        ));
  }
}
