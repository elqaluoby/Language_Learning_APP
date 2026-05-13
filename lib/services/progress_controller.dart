import 'package:flutter/foundation.dart';

class ProgressController extends ChangeNotifier {
  ProgressController._();

  static final ProgressController instance = ProgressController._();

  static const int totalSounds = 37;

  final Set<String> _completedSounds = {};

  int get completedSounds => _completedSounds.length;

  double get progress => completedSounds / totalSounds;

  int get percent => (progress * 100).round();

  void markSoundCompleted(String sound) {
    final isNewSound = _completedSounds.add(sound);
    if (isNewSound) {
      notifyListeners();
    }
  }
}
