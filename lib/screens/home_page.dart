import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/phrses_page.dart';
import 'Numbers_Page.dart';
import 'family_members_page.dart';
import 'colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEAE7),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [


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
              color: const Color(0xffEf9235)),


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
              color: const Color(0xff5D8B3C)),


          Category(onTap: () {
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
          color: const Color(0xff854DAC)),


          Category(onTap: () 
          {
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
          color: const Color(0xFF51B0D5)
          ),
        ],
      ),
    );
  }
}
