import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/Numbers_Page.dart';
import 'package:toku_app/screens/phrses_page.dart';
import 'package:toku_app/services/progress_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          const ProgressSection(),
          const CourseContentHeader(),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
            soundCount: 10,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMembersPage();
                  },
                ),
              );
            },
            text: 'Family members',
            color: const Color(0xff5D8B3C),
            soundCount: 10,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
            text: 'Colors',
            color: const Color(0xff854DAC),
            soundCount: 8,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
            text: 'Phrases',
            color: const Color(0xFF51B0D5),
            soundCount: 9,
          ),
        ],
      ),
    );
  }
}

class CourseContentHeader extends StatelessWidget {
  const CourseContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 6),
      child: Row(
        children: [
          const Text(
            'Course Content',
            style: TextStyle(
              color: Color(0xff46322B),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                color: const Color(0xff46322B).withOpacity(0.16),
                borderRadius: BorderRadius.circular(999),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final progressController = ProgressController.instance;

    return AnimatedBuilder(
      animation: progressController,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xFFFFA657),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Progress',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${progressController.percent}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '${progressController.completedSounds} of ${ProgressController.totalSounds} sounds completed',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 14),
              ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(
                    end: progressController.progress,
                  ),
                  duration: const Duration(milliseconds: 450),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return LinearProgressIndicator(
                      value: value,
                      minHeight: 12,
                      backgroundColor: Colors.white.withOpacity(0.35),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
