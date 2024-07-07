import 'package:first_task/screens/Settings.dart';
import 'package:first_task/screens/dash_board.dart';
import 'package:first_task/screens/q_bank.dart';
import 'package:first_task/screens/resource_vault_screen.dart';
import 'package:first_task/screens/shop.dart';
import 'package:first_task/widgets/text_gradient.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  var currentIndex = 0;
  List screens = [

    const DashBoard(),
    const QBank(),
    const ResourceVaultScreen(),
    const Shop(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
            icon: Image.asset('assets/dashboard.png'),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/qbank.png'),
            label: 'QBank',
          ),
          BottomNavigationBarItem(
            icon:   GradientTextWithBorder(
              text: 'Vault',
              style: GoogleFonts.rubik(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              borderColor:  const Color(0xFF2370CA), // Border color
              borderWidth: 3.5,
              gradient: const LinearGradient(
                colors: <Color>[
                  Color(0xFFFCEBF8), // Start color of the gradient
                  Color(0xFFFCEBF8)// End color of the gradient
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),// Border width
            ),
            label: 'The Resource Vault',
          ),
           BottomNavigationBarItem(
            icon: Image.asset('assets/shop.png'),
            label: 'Shop',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        selectedFontSize: 8,
        selectedItemColor: const Color.fromRGBO(0, 0, 0, 1),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromRGBO(100, 116, 139, 0.75),
        unselectedLabelStyle: GoogleFonts.rubik(
          color: const Color.fromRGBO(0, 0, 0, 0.5),
          fontSize: 8,
          fontWeight: FontWeight.w400,

        ),

      ),
    );
  }
}




