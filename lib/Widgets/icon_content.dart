import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;
  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: Theme.of(context).iconTheme.color,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.bodyText1,

        )
      ],
    );
  }
}