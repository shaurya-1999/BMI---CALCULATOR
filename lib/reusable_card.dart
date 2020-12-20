import 'package:flutter/material.dart';
class reusablecard extends StatelessWidget {
  reusablecard({@required this.colour, this.cardchild, this.onpressed});

  final Color colour;
  final Widget cardchild;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
