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
      body: SingleChildScrollView(
        child: Column(children: [
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
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(90, 70))),
            ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.search, size: 40),
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(90, 70))),
          ]),
          const SizedBox(height: 50),
          for (Word item in word)
            Container(
              color: Colors.lightBlue,
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  SizedBox(
                      width: 150,
                      child: Text(
                        item.word,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Text(item.definition,
                      style: const TextStyle(fontStyle: FontStyle.italic)),
                ],
              ),
            )
        ]),
      ),
    );
  }
}

class Word {
  final String definition;
  final String word;

  Word({required this.word, required this.definition});
}

List<Word> word = <Word>[
  Word(word: "word", definition: "definition"),
  Word(word: "monster", definition: "quái vật"),
  Word(word: "time", definition: "thời gian"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
];
