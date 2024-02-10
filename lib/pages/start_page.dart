import 'package:flutter/material.dart';
import 'package:flutter_belajar_dikelas/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 320),
          Padding(
            padding: const EdgeInsets.only(right: 125),
            child: Text(
              "Hello there,",
              style: GoogleFonts.poppins(
                  fontSize: 40, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              "Welcome to AppLife",
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
            ),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 65),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(),
            ),
            child:
                Text("Get Started", style: GoogleFonts.poppins(fontSize: 20)),
          )
        ],
      )),
    );
  }
}
