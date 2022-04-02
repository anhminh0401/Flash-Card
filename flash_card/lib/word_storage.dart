import 'package:flutter/material.dart';

class WordStorage extends StatefulWidget {
  const WordStorage({Key? key}) : super(key: key);

  @override
  State<WordStorage> createState() => _WordStorageState();
}

class _WordStorageState extends State<WordStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flash Card")),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 50,
              ),
              style: ElevatedButton.styleFrom(minimumSize: const Size(90, 70))),
          ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.search, size: 40),
              style: ElevatedButton.styleFrom(minimumSize: const Size(90, 70))),
        ]),
        const SizedBox(
          height: 50
        ), 
      
      ]),
    );
  }
}
