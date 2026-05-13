import 'package:flutter/material.dart';
import 'package:toku_app/components/phrase_item.dart';
import 'package:toku_app/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Itemmodel> numbers = const [
    Itemmodel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
    ),
    Itemmodel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: "Chan'neru tōroku \n oo wasurenaku",
      enName: "Don't forget to subscribe",
    ),
    Itemmodel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling?',
    ),
    Itemmodel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime \n ga suki desu',
      enName: 'I love anime',
    ),
    Itemmodel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu \n ga suki desu',
      enName: 'I love programming',
    ),
    Itemmodel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu \n wa taisetsu desu',
      enName: 'Programming is easy',
    ),
    Itemmodel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae \n wa nan desu ka?',
      enName: 'What is your name?',
    ),
    Itemmodel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no ka?',
      enName: 'Where are you going?',
    ),
    Itemmodel(
      sound: 'sounds/phrases/yes_i_am_coming.wav',
      jpName: 'Hai, kimimasu.',
      enName: 'Yes, I am coming.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: numbers[index],
            color: const Color(0xFF51B0D5),
          );
        },
      ),
    );
  }
}
