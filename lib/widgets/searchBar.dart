import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class searchBar extends StatefulWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          )
        ],
      ),
      child: TextFormField(
        onChanged: (string) {},
        obscureText: false,
        validator: (input) {
          if (input != null && input.isEmpty) {
            return "Please enter some text";
          }
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            FeatherIcons.search,
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
