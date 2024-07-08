import 'package:first_task/widgets/catergory_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_button.dart';
import '../widgets/resource_card.dart';
import '../widgets/text_gradient.dart';

class ResourceVaultScreen extends StatelessWidget {
  const ResourceVaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25.5, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 23,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Pre',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'M',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: 'ed',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  GradientTextWithBorder(
                    text: 'The Vault',
                    style: GoogleFonts.rubik(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                    borderColor: const Color(0xFF2370CA), // Border color
                    borderWidth: 3.5,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFFFCEBF8), // Start color of the gradient
                        Color(0xFFFCEBF8) // End color of the gradient
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ), // Border width
                  ),
                ],
              ),
              Text(
                'All The Resources Any Pre Medical Student Could Ever Need',
                style: GoogleFonts.rubik(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              const SearchBarSection(),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(title: 'Topical Guides'),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryButton(title: 'Mnemonics'),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryButton(title: 'Snap Courses'),
                  ],
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(title: '11th Hour Prep'),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryButton(title: 'Study Notes'),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryButton(title: 'Shortlistings'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Newest Additions',
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Latest additions to ',
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Pre',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'M',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: 'ed',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  Text(
                    ' treasury!',
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ResourceCard(
                      first: 'VIDEO RESOURCE',
                      title: 'Classification \nof Enzymes',
                      description:
                          'Memorizing the hardest facial\n bones using this mnemonic.',
                      image: 'assets/classification.png',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: 'TOPICAL GUIDANCE',
                      title: 'Biological\nMolecules',
                      description: 'Highly-rated topical\nBiology.',
                      image: 'assets/bio.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Essential',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: const Color.fromRGBO(35, 112, 202, 1),
                        ),
                      ),
                      TextSpan(
                        text: ' Stuff',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  const Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromRGBO(236, 88, 99, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Syllabi, Schemes, etc., and everything a student just needs.',
                style: GoogleFonts.rubik(
                    fontSize: 10, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      title: 'AKU Entry Test\nSyllabus',
                      description: 'For 2023',
                      first: 'DOWNLOADABLE RESOURCE',
                      onPressed: () {},
                    ),
                    CategoryCard(
                      title: 'MDCAT ‘23\nSyllabus',
                      description: 'From PM&DC',
                      first: 'DOWNLOADABLE RESOURCE',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'The ',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '11th Hour',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: ' Prep',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  const Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromRGBO(236, 88, 99, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'DYNAMIC',
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: ' FSc-II EXAMS - PUNJAB 2024',
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ResourceCard(
                      title: 'THERMODY..',
                      description: 'SHORTLISTING',
                      image: 'assets/thermo.png',
                      first: '',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 'THERMODYNAMICS',
                      description: 'SHORTLISTING',
                      image: 'assets/thermo.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Topical',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' Guides',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  const Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromRGBO(236, 88, 99, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Toppers’ Insights to every topic from every board of Pakistan! ',
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ResourceCard(
                      title: 'CELL STRUCTURE\nAND FUNCTION',
                      description: 'BIOLOGY - PUNJAB BOARD',
                      image: 'assets/cell.png',
                      first: '',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 's AND p\nBLOCK ELEMENTS',
                      description: 'CHEMISTRY - SINDH BOARD',
                      image: 'assets/s & p.png',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 'DAWN OF MODERN\nPHYSICS',
                      description: 'PHYSICS - KPK BOARD',
                      image: 'assets/dawn.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Study Notes',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  const Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromRGBO(236, 88, 99, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'The most comprehensive notes in town.',
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ResourceCard(
                      title: 'ALCOHOLS,\n PHENOLS, ETHER',
                      description: 'CHEMISTRY - PUNJAB BOARD',
                      image: 'assets/chemistry.png',
                      first: '',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 's AND p\nBLOCK ELEMENTS',
                      description: 'CHEMISTRY - SINDH BOARD',
                      image: 'assets/s & p.png',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 'DAWN OF MODERN\nPHYSICS',
                      description: 'PHYSICS - KPK BOARD',
                      image: 'assets/dawn.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Short',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: 'listings',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  const Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromRGBO(236, 88, 99, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'One Chapter. One Page. Half-Hour Revisions!',
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ResourceCard(
                      title: 'THERMODYNAMICS',
                      description: 'SHORTLISTING',
                      image: 'assets/thermo.png',
                      first: '',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 'THERMODYNAMICS',
                      description: 'SHORTLISTING',
                      image: 'assets/thermo.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/nemonics.png'),
                  const Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromRGBO(236, 88, 99, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'All the mnemonics you need. No more mindless repetition! ',
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400, fontSize: 10),
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ResourceCard(
                      title: 'RNA and DNA\nViruses',
                      description:
                          'Learn all the RNA and DNA\nViruses with just a simple\ntrick!',
                      image: 'assets/rna.png',
                      first: '',
                      onTap: () {},
                    ),
                    ResourceCard(
                      first: '',
                      title: 'Pro-Glucose\nHormones',
                      description:
                          'Learn all the classes of\nenzymes with just\na simple word!',
                      image: 'assets/hormones.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
