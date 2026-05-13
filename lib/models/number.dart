import 'package:audioplayers/audioplayers.dart';

class Itemmodel {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;

  const Itemmodel({
    required this.sound,
     this.image,
    required this.jpName,
    required this.enName,
  });

  playsound() {
    final player = AudioPlayer();
     player.play(AssetSource(sound));
  }
}
