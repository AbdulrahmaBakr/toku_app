// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.img,
    required this.enName,
    required this.jpName,
    required this.onTap,
  }) : super(key: key);

  final String img;
  final String enName;
  final String jpName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Color.fromARGB(206, 167, 188, 62),
        ),
        height: 90,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                img,
                width: 90,
              ),
              Column(
                children: [
                  Text(
                    jpName,
                    style: GoogleFonts.abel(
                        fontSize: 20,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    enName,
                    style: GoogleFonts.abel(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
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
        ]),
      ),
    );
  }
}
