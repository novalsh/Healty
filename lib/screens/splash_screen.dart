import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty/screens/home_screen.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          result: (route) => false);
    });

    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/background.png'),
          Center(
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 42,
                ),
                Image.asset('assets/images/Logo.png', height: 22),
                const SizedBox(
                  height: 73,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Helping you\nto keep ",
                      style: GoogleFonts.manrope(
                          fontSize: 24,
                          color: const Color(0xFFDEE1FE),
                          letterSpacing: 3.5 / 100,
                          height: 152 / 100),
                      children: const [
                        TextSpan(
                            text: "your bestie",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            )),
                        TextSpan(text: "\nStay healthy!")
                      ],
                    )),
              ],
            )),
          )
        ],
      ),
    );
  }
}
