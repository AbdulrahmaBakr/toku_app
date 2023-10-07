import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.categText,
    required this.categColor,
    required this.onTap,
  });

  final String categText;
  final Color categColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: categColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          height: 80,
          child: Center(
            child: Text(
              categText,
              style:
                  GoogleFonts.acme(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
