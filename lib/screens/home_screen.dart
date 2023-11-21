import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        _greetings(),
        const SizedBox(
          height: 17,
        ),
        _card()
      ],
    )));
  }

  AspectRatio _card() {
    return AspectRatio(
        aspectRatio: 336 / 184,
        child: Container(
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF818AF9)),
          child: Stack(
            children: [
              Image.asset('assets/images/cat.png',
                  height: double.maxFinite,
                  width: double.maxFinite,
                  fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                      text: "Your ",
                      style: GoogleFonts.manrope(
                          fontSize: 14,
                          color: const Color(0xFFDEE1FE),
                          height: 150 / 100),
                      children: const [
                        TextSpan(
                            text: "Joy ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            )),
                        TextSpan(text: "will get \nvaccination "),
                        TextSpan(
                            text: "tomorrow\nat 07.00 am!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                    )),
                    const SizedBox(height: 12),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            border: Border.all(
                                color: Colors.white.withOpacity(.12), width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("See Details",
                            style: GoogleFonts.manrope(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Padding _greetings() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hello, Human!",
              style: GoogleFonts.manrope(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF1F1D2B))),
          Stack(children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(FeatherIcons.shoppingBag,
                    color: Color(0xFF818AF9))),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEF6497),
                      borderRadius: BorderRadius.circular(15 / 2)),
                  child: Center(
                      child: Text(
                    "2",
                    style: GoogleFonts.mPlus1p(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w900),
                  ))),
            )
          ])
        ],
      ),
    );
  }
}
