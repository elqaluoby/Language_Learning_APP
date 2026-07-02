import 'package:flutter/material.dart';
import 'package:toku_app/components/splash_slide.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashSlide(
      image: 'assets/images/splash/splash_2.jpg',
      title: '毎日すごし継続',
      subtitle: 'Small practice each day turns unfamiliar sounds into memory.',
    );
  }
}
