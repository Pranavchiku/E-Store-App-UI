import 'package:e_store_app/widgets/itemCardDetails.dart';
import 'package:e_store_app/widgets/itemNamePrice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Item extends StatefulWidget {
  String? imagePath;
  String? itemName;
  String? itemPrice;
  String? itemPieces;
  String? itemGram;

  Item(
      {required this.imagePath,
      required this.itemName,
      required this.itemPrice,
      required this.itemPieces,
      required this.itemGram});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            // left: 20,
            // right: 20,
            // bottom: size.height * 0.03,
            top: size.height * 0.07,
          ),
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Color(0xFFC4F0F0),
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imagePath!),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 30,
                    right: 30,
                  ),
                  // height: size.height / 4,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      itemNamePrice(
                        itemGram: widget.itemGram!,
                        itemName: widget.itemName!,
                        itemPieces: widget.itemPieces!,
                        itemPrice: widget.itemPrice!,
                      ),
                      const SizedBox(height: 20),
                      itemCardDetails(),
                      const SizedBox(height: 20),
                      Text(
                        'Description',
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "The best cupcakes in the world \nWe make them as delicious as \nyour mom makes them",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () => {},
                        elevation: 0,
                        padding: EdgeInsets.all(18),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Color(0XFFFF9580),
                        child: Center(
                          child: Text(
                            "Add to Cart",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
