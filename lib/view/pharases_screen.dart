import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/data/family_data.dart';
import 'package:toku_app/data/pharases_data.dart';
import 'package:toku_app/widget/pharases_widget.dart';

class PharasesScreen extends StatelessWidget {
  const PharasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black38,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Pharases',
            style: GoogleFonts.acme(
                color: const Color.fromARGB(229, 255, 193, 7), fontSize: 30),
          ),
        ),
      ),
      body: ListView(
        children: [
          ...pharasesData.map((e) => PharasesWidget(
              onTap: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(e.sound));
              },
              enName: e.englishName,
              jpName: e.japanName))
        ],
      ),
    );
  }
}
