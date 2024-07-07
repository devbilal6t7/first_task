import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResourceCard extends StatelessWidget {
  final String title;
  final String description;
  final String first;
  final String image;
  final void Function() onTap;
  const ResourceCard({super.key, required this.title, required this.description, required this.first, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SizedBox(
          height: 100,
          width: 240,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset(image,width: 68,height: 75,fit: BoxFit.fitHeight
                  ,),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(first, style: const TextStyle(fontSize: 5.5,fontWeight: FontWeight.w400,color: Color.fromRGBO(0, 0, 0, 0.35)
                    )),
                    Text(title, style:  GoogleFonts.rubik(fontSize: 9.5, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 8),
                    Text(description, style: GoogleFonts.rubik(fontSize: 5.9,fontWeight: FontWeight.w400)),
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
