import 'package:bmi/components/bottomappbar.dart';
import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BmiCal());
}

class BmiCal extends StatelessWidget {
  const BmiCal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF64E5F2),
        textTheme: GoogleFonts.outfitTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF64E5F2),
              Color(0xFFC7DEEE),
            ],
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: GoogleFonts.outfit(
                    fontSize: 160.0,
                    color: const Color(0xFF004581),
                    fontWeight: FontWeight.bold,
                    height: 0.8,
                  ),
                ),
                Text(
                  'Calculator',
                  style: GoogleFonts.outfit(
                    fontSize: 50.0,
                    color: const Color(0xFF004581),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'How healthy are you?',
                  style: GoogleFonts.outfit(
                    fontSize: 15.0,
                    color: const Color(0xFF004581),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const ReuseableBottom(height: 60.0,),
        floatingActionButton: Builder(
          builder: (context) {
            return ReusableBottomAppBar(
              buttonText: 'Let\'s Go!',
              onPressed: () {     
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage()));
              },
            );
          }
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}



