import 'package:flutter/material.dart';
class SliderWidget extends StatefulWidget {
  int? height = 150;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {


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
          widget.height.toString(),
            style: Theme.of(context).textTheme.headline1,),
            SizedBox( width: 5,),
            Text('cm',
            style: Theme.of(context).textTheme.bodyText1,
          )
          ],
        ),
        SliderTheme(
          data: SliderThemeData().copyWith(
            thumbColor: Colors.pink,
            trackHeight: 1,
            activeTrackColor: Theme.of(context).colorScheme.primary,
            inactiveTrackColor: Colors.grey,
            overlayColor: Colors.red[100],
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 15),


          ),
          child: Slider(
              value: widget.height!.toDouble(),
              min: 120,
              max: 220,
              onChanged: (double newValue){
               setState(() {
                 widget.height = newValue.round();

               });


              }
          ),
        ),
      ],
    );
  }
}