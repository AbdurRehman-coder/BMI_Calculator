import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ReusableContainer extends StatelessWidget {
   final Widget? cardChild;
   final Color? cardColor;
  ReusableContainer({this.cardChild, this.cardColor});
  @override
  Widget build(BuildContext context) {
    var container = Container(
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      // child: Text('Male',
      //   style: Theme.of(context).textTheme.bodyText1,),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),

      //can be reusable child (later)
      child: cardChild,
    );
    return container;
  }
}