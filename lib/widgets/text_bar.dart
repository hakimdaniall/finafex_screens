import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Insert Amount",
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
                Icons.arrow_circle_down,
                color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}