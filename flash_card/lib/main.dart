import 'dart:io';

import 'package:flash_card/word_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flash card",
      home:  Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => WordStorage());
                Navigator.push(context, route);
              },
              child: const Text("Kho từ vựng"),
              style: ElevatedButton.styleFrom(minimumSize: const Size(150, 50)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Ôn tập"),
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(150, 50)),
              )),
          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text("Thoát"),
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(150, 50)),
              ))
        ],
      )),
    );
  }
}
