import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class offerCard extends StatefulWidget {
  const offerCard({Key? key}) : super(key: key);

  @override
  State<offerCard> createState() => _offerCardState();
}

class _offerCardState extends State<offerCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: 150,
      width: size.width,
      padding: EdgeInsets.only(
        top: 20,
        bottom: 10,
        left: 30,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0XFFD6F1FE),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "15\%",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF9580),
                      ),
                    ),
                  ),
                  Text(
                    " for all cakes",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "For our regular \ncustomers",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
          ClipRect(
            child: Image.asset(
              "assets/cupcake.png",
              height: 400,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
