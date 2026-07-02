import 'package:flutter/material.dart';

class SplashSlide extends StatelessWidget {
  const SplashSlide({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.child,
  });

  final String image;
  final String title;
  final String subtitle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.16),
                Colors.black.withOpacity(0.26),
                Colors.black.withOpacity(0.90),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 72),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    height: 1.45,
                  ),
                ),
                if (child != null) ...[
                  const SizedBox(height: 24),
                  child!,
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
