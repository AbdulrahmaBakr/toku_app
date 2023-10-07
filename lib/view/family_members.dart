import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/data/family_data.dart';
import 'package:toku_app/widget/number_card_widget.dart';

class FamilySecreen extends StatelessWidget {
  const FamilySecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.amber,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Family',
                  style: GoogleFonts.acme(
                      color: const Color.fromARGB(255, 60, 64, 66),
                      fontSize: 25),
                ),
                Text(
                  '  Members',
                  style: GoogleFonts.acme(color: Colors.amber, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          ...familyData.map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: NumberCard(
                img: e.img,
                enName: e.englishName,
                jpName: e.japanName,
                onTap: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(e.sound));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
