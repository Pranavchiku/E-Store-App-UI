import 'package:e_store_app/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingCard extends StatefulWidget {
  const landingCard({Key? key}) : super(key: key);

  @override
  State<landingCard> createState() => _landingCardState();
}

class _landingCardState extends State<landingCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: 300,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You will ",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Text(
                  "be delighted",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0XFFFF9580),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "with our sweets!",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "There is something",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Text(
              "for everyone to taste",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Index())),
              },
              elevation: 0,
              padding: EdgeInsets.all(18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color(0XFFFF9580),
              child: Center(
                child: Text(
                  "It's Wonderful!",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
