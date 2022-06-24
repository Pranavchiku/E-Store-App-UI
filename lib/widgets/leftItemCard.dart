import 'package:e_store_app/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'dart:math' as math;

class leftItemCard extends StatefulWidget {
  String? imagePath;
  String? itemName;
  String? itemPrice;
  Color? cardColor;

  leftItemCard({
    required this.imagePath,
    required this.itemName,
    required this.itemPrice,
    required this.cardColor,
  });

  @override
  State<leftItemCard> createState() => _leftItemCardState();
}

class _leftItemCardState extends State<leftItemCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: 240,
      width: size.width * 0.45,
      decoration: BoxDecoration(
        color: widget.cardColor!,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Transform.rotate(
              angle: math.pi / 8,
              child: Container(
                height: size.height / 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(widget.imagePath!),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            widget.itemName!,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Item(
                            imagePath: widget.imagePath!,
                            itemGram: "800 gm",
                            itemName: widget.itemName!,
                            itemPieces: "6 pieces",
                            itemPrice: widget.itemPrice!,
                          )));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.7),
              ),
              child: Center(
                child: Text(
                  widget.itemPrice!,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
