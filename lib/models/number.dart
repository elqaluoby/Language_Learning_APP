import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/services/progress_controller.dart';

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

  Future<void> playsound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
    ProgressController.instance.markSoundCompleted(sound);
  }
}
