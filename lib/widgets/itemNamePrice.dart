import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class itemNamePrice extends StatefulWidget {
  String? itemName;
  String? itemPrice;
  String? itemPieces;
  String? itemGram;

  itemNamePrice(
      {required this.itemGram,
      required this.itemName,
      required this.itemPrice,
      required this.itemPieces});
  @override
  State<itemNamePrice> createState() => _itemNamePriceState();
}

class _itemNamePriceState extends State<itemNamePrice> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.itemName!,
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            // const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.itemPieces!,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  widget.itemGram!,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Text(
          widget.itemPrice!,
          style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
