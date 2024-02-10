import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belajar_dikelas/pages/regis_page.dart';
import 'package:flutter_belajar_dikelas/pages/start_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  bool obscurePassword = true;
  void togglePasswordVisibility() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartPage(),
                ));
          },
        ),
        elevation: 0, // No shadow
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 130),
            Padding(
              padding: const EdgeInsets.only(right: 125),
              child: Text(
                "Hello there,",
                style: GoogleFonts.poppins(
                    fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Text(
                "Login to your account",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3), 
                    ),
                  ],
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (value) {
                    // Aksi ketika nilai berubah
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: togglePasswordVisibility,
                    ),
                  ),
                  obscureText: obscurePassword,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Username: $username');
                print('Password: $password');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 65),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(),
              ),
              child: Text('Login', style: GoogleFonts.poppins(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisPage()),
                          );
                          print('Sign up clicked');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
