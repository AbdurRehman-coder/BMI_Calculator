import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  CustomIconButton({this.icon, this.onPress});
  final IconData? icon;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress as Function(),
      shape: CircleBorder(),
      constraints: const BoxConstraints.tightFor(

        width: 40,
        height: 40,
      ),
      fillColor: Colors.grey,
      child: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}