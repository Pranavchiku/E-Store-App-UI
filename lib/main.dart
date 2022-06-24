import 'package:e_store_app/widgets/landingCard.dart';
import 'package:e_store_app/widgets/landingImage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: LandingPage(),
      theme: new ThemeData(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: size.height * 0.03,
            top: size.height * 0.07,
          ),
          decoration: BoxDecoration(color: Color(0xFFD6F1FE)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const landingImage(),
              const SizedBox(height: 30),
              const landingCard(),
            ],
          ),
        ),
      ),
    );
  }
}
