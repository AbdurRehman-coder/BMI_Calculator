import 'package:flutter/material.dart';
class SliderWidget extends StatefulWidget {
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
 int? height = 150;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text('HEIGHT',
        style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
          height.toString(),
            style: Theme.of(context).textTheme.headline1,),
            SizedBox( width: 5,),
            Text('cm',
            style: Theme.of(context).textTheme.bodyText1,
          )
          ],
        ),
        Slider(
            value: height!.toDouble(),
            min: 120,
            max: 220,
            activeColor: Colors.pinkAccent,
            inactiveColor: Theme.of(context).colorScheme.secondary,
            onChanged: (double newValue){
             setState(() {
               height = newValue.round();
               print(height);
             });


            }
        ),
      ],
    );
  }
}