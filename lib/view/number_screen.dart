import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/data/numbers_data.dart';
import 'package:toku_app/widget/number_card_widget.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.amber,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Numbers',
            style: GoogleFonts.acme(
                color: const Color.fromARGB(229, 255, 193, 7), fontSize: 30),
          ),
        ),
      ),
      body: ListView(
        children: [
          ...numbersData.map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: NumberCard(
                img: e.img,
                enName: e.englishName,
                jpName: e.japanName,
                onTap: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(e.sound));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
