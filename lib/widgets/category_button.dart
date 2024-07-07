import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shadowColor: const Color(0xFF44009B),
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF44009B),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {},
      child: Text(
        title,
        style: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: const Color.fromRGBO(68, 0, 155, 1)),
      ),
    );
  }
}
