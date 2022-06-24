import 'package:e_store_app/widgets/leftItemCard.dart';
import 'package:e_store_app/widgets/offerCard.dart';
import 'package:e_store_app/widgets/rightItemCard.dart';
import 'package:e_store_app/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'dart:math' as math;

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: size.height * 0.03,
            top: size.height * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRect(
                    child: Image.asset(
                      "assets/profile.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Welcome, User!",
                    style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              searchBar(),
              const SizedBox(height: 30),
              offerCard(),
              const SizedBox(height: 30),
              Text(
                "Popular sweets",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      leftItemCard(
                        imagePath: "assets/lollipop.png",
                        itemName: "Lollipop",
                        itemPrice: "\$ 100",
                        cardColor: Color.fromARGB(255, 230, 202, 255),
                      ),
                      const SizedBox(height: 20),
                      leftItemCard(
                        imagePath: "assets/cupcake2.png",
                        itemName: "Donuts",
                        itemPrice: "\$ 10.60",
                        cardColor: Color.fromARGB(255, 255, 221, 202),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      rightItemCard(
                        imagePath: "assets/cupcake2.png",
                        itemName: "Cupcakes",
                        itemPrice: "\$ 5.56",
                        cardColor: Color(0xFFC4F0F0),
                      ),
                      const SizedBox(height: 20),
                      rightItemCard(
                        imagePath: "assets/lollipop.png",
                        itemName: "Macaroons",
                        itemPrice: "\$ 5.56",
                        cardColor: Color.fromARGB(255, 230, 240, 196),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
