import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/view/family_members.dart';
import 'package:toku_app/view/number_screen.dart';
import 'package:toku_app/view/pharases_screen.dart';
import 'package:toku_app/widget/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Toku',
                style: GoogleFonts.acme(
                    color: const Color.fromARGB(255, 60, 64, 66), fontSize: 25),
              ),
              Text(
                '  学ぶために',
                style: GoogleFonts.acme(color: Colors.amber, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryWidget(
              categText: 'Numbers',
              categColor: const Color.fromARGB(229, 255, 193, 7),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumbersScreen()),
                );
              }),
          CategoryWidget(
            categText: 'Family Members',
            categColor: const Color.fromARGB(241, 213, 164, 17),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilySecreen()),
              );
            },
          ),
          CategoryWidget(
            categText: 'Colors',
            categColor: const Color.fromARGB(228, 188, 143, 10),
            onTap: () {},
          ),
          CategoryWidget(
            categText: 'Pharases',
            categColor: const Color.fromARGB(227, 209, 158, 6),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PharasesScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
