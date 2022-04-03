import 'package:flutter/material.dart';

class WordStorage extends StatefulWidget {
  const WordStorage({Key? key}) : super(key: key);

  @override
  State<WordStorage> createState() => _WordStorageState();
}

class _WordStorageState extends State<WordStorage>
    with TickerProviderStateMixin {
  //https://www.kindacode.com/article/flutter-make-a-scroll-back-to-top-button/

  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;

  // scroll controller
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flash Card")),
        body: SingleChildScrollView(
          controller: _scrollController,
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
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(90, 70))),
              ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.search, size: 40),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(90, 70))),
            ]),
            const SizedBox(height: 50),
            for (Word item in word)
              Container(
                color: Colors.lightBlue,
                margin: const EdgeInsets.only(bottom: 18),
                child: Row(
                  children: [
                    SizedBox(
                        width: 150,
                        child: Text(
                          item.word,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                    Text(item.definition,
                        style: const TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 18)),
                  ],
                ),
              )
          ]),
        ),
        floatingActionButton: _showBackToTopButton == true
            ? FloatingActionButton(
                onPressed: _scrollToTop,
                backgroundColor: Colors.green,
                child: const Icon(Icons.arrow_upward),
              )
            : null);
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
  Word(word: "word", definition: "definition"),
  Word(word: "monster", definition: "quái vật"),
  Word(word: "time", definition: "thời gian"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
  Word(word: "word", definition: "definition"),
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
