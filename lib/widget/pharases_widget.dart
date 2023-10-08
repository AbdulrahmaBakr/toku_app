import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PharasesWidget extends StatelessWidget {
  const PharasesWidget({
    super.key,
    required this.onTap,
    required this.enName,
    required this.jpName,
  });
  final Function() onTap;
  final String enName;
  final String jpName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: 600,
        decoration: const BoxDecoration(
          color: Colors.amber,
        ),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jpName,
                    style: GoogleFonts.acme(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    enName,
                    style: GoogleFonts.acme(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: IconButton(
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white70,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
