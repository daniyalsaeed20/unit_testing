import 'package:flutter/material.dart';
import 'package:example_repo/data/colors.dart';

Widget searchBar({breweryController}) {
  return Container(
    decoration: BoxDecoration(
        // color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(45),
        border: Border.all(
          width: 1,
          color: themeColor,
        )),
    child: TextField(
      style: TextStyle(
        fontSize: 16,
        // color: white,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontSize: 16,
          // color: white,
        ),
        hintText: 'Search',
        suffixIcon: Icon(
          Icons.search,
          color: themeColor,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(20),
      ),
      onChanged: (value) {
        breweryController.searchField = value;
        breweryController.update();
      },
    ),
  );
}
