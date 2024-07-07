import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final String first;
  final void Function() onPressed;

  const CategoryCard({super.key, required this.title, required this.description, required this.first, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          height: 90,
          width: 163,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(first, style: const TextStyle(fontSize: 6,fontWeight: FontWeight.w800,color: Color.fromRGBO(0, 0, 0, 0.35)
                    )),
                    Text(title, style:  GoogleFonts.rubik(fontSize: 13, fontWeight: FontWeight.w800)),
                    Text(description, style: GoogleFonts.rubik(fontSize: 7,fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
