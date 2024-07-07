import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 0.85),
      width: 343,
      height: 40,
      child: TextField(
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: 'Search',
          hintStyle: GoogleFonts.rubik(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),
          prefixIcon: const Icon(Icons.search,
            size:  15.86,
            color: Color(0xFF5898FF
          ),),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear,
                size: 13,
                color: Color(0xFFEC5863)
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
