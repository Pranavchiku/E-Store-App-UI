import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class itemCardDetails extends StatefulWidget {
  const itemCardDetails({Key? key}) : super(key: key);

  @override
  State<itemCardDetails> createState() => _itemCardDetailsState();
}

class _itemCardDetailsState extends State<itemCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Color(0xFFC4F0F0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                FeatherIcons.clock,
              ),
              const SizedBox(height: 5),
              Text(
                "20 - 30 min",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            children: [
              Icon(
                FeatherIcons.mapPin,
              ),
              const SizedBox(height: 5),
              Text(
                "4 servings",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            children: [
              Icon(
                Icons.fireplace,
              ),
              const SizedBox(height: 5),
              Text(
                "598 kKal",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
