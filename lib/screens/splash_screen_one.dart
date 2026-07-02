import 'package:flutter/material.dart';
import 'package:toku_app/components/splash_slide.dart';
import 'package:toku_app/screens/splash_screen_three.dart';
import 'package:toku_app/screens/splash_screen_two.dart';

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              SplashSlide(
                image: 'assets/images/splash/splash_1.jpg',
                title: 'はじめ の 一歩',
                subtitle:
                    'Every new word is one step closer to speaking with confidence.',
              ),
              SplashScreenTwo(),
              SplashScreenThree(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  width: _currentPage == index ? 22 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? const Color(0xffE75E34)
                        : Colors.white.withOpacity(0.72),
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
