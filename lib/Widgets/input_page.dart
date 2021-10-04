import 'package:bmi_calculator/Widgets/icon_content.dart';
import 'package:bmi_calculator/Widgets/reusable_container.dart';
import 'package:bmi_calculator/Widgets/themes.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //method for changing the colors
  void updateColor(int gender){

  }

 bool clickable1 = true;
  bool clickable2 = true;
 void toggleView1(){
   setState(() {
     clickable1 = !clickable1;
   });
 }
  void toggleView2(){
    setState(() {
      clickable2 = !clickable2;
    });
  }
  @override
  Widget build(BuildContext context) {

    Color greyClickColor = Theme.of(context).accentColor;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).canvasColor,
        title: Text('BMI Calculator',
        style: Theme.of(context).textTheme.headline4,),
        elevation: 0.0,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
               child: GestureDetector(
                 onTap: (){
                   setState(() {
                     if(clickable1 == true && clickable2 == false){
                       clickable1 = true;
                     }

                   });
                 },
                 child: ReusableContainer(
                   cardColor: clickable1 ? Theme.of(context).accentColor
                   : Theme.of(context).cardColor,
                   cardChild: IconContent(

                     icon: Icons.male_sharp,
                     label: 'MALE',
                   ),
                 ),
               ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        toggleView2();
                      });
                    },
                    child: ReusableContainer(
                      cardColor: clickable2 ? Theme.of(context).accentColor
                          : Theme.of(context).cardColor,
                      cardChild: IconContent(
                        icon: Icons.male_sharp,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              cardColor: Theme.of(context).cardColor,
            ),
          ),
          Expanded(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ReusableContainer(
                  cardColor: Theme.of(context).cardColor,
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  cardColor: Theme.of(context).cardColor,
                ),
              ),
            ],
          ),),
        ],
      )
    );
  }
}