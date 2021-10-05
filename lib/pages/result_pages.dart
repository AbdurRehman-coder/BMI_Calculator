import 'package:bmi_calculator/Widgets/reusable_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double bmi_result = 28.4;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR',
          style: Theme.of(context).textTheme.headline4,),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text('Your Result',
                style: Theme.of(context).textTheme.headline1,),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: ReusableContainer(

                  cardColor: Theme.of(context).cardColor,
                  onPress: (){

                  },
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OVERWEIGHT',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.green,
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Text(bmi_result.toString(),
                      style: Theme.of(context).textTheme.headline1,),
                      SizedBox(height: 5),
                      Text(
                        'your little over weight, just keep practicing...',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),

                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ReusableContainer(
                onPress: (){
                 Navigator.pop(context);
                },
                cardColor: Colors.pinkAccent,
                cardChild: Center(
                  child: Text(
                    'RE_CALCULATE',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}