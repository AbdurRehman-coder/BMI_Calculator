import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ReusableContainer extends StatelessWidget {

  ReusableContainer({this.cardChild, this.cardColor, this.onPress});
  final Widget? cardChild;
  final Color? cardColor;
   Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as Function(),
      child: Container(
        alignment: Alignment.center,
        transformAlignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(15),
        ),

        //can be reusable child (later)
        child: cardChild,
      ),
    );
  }
}