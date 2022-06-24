import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingImage extends StatelessWidget {
  const landingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cover.png'),
        ),
      ),
    );
  }
}
