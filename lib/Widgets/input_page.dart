import 'package:bmi_calculator/Widgets/icon_content.dart';
import 'package:bmi_calculator/Widgets/reusable_container.dart';
import 'package:bmi_calculator/Widgets/slider.dart';
import 'package:bmi_calculator/Widgets/themes.dart';
import 'package:bmi_calculator/pages/result_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//enum to select male/female as a gender
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //enum Gender instance, where we will store the selected gender
  // when user pressed the card
  Gender? selectedGender;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Theme.of(context).canvasColor,
          title: Text(
            'BMI Calculator',
            style: Theme.of(context).textTheme.headline4,
          ),
          centerTitle: true,
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
                    //Male Card
                    child: ReusableContainer(
                      cardColor: selectedGender == Gender.male
                          ? Theme.of(context).cardColor
                          : Theme.of(context).colorScheme.secondary,
                      cardChild: IconContent(
                        icon: Icons.male_sharp,
                        label: 'MALE',
                      ),
                      onPress: () {
                        Future.delayed(Duration.zero, () async {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        });
                      },
                    ),
                  ),
                  Expanded(
                    //Female Card
                    child: ReusableContainer(
                      cardColor: selectedGender == Gender.female
                          ? Theme.of(context).cardColor
                          : Theme.of(context).colorScheme.secondary,
                      cardChild: IconContent(
                        icon: Icons.female_sharp,
                        label: 'FEMALE',
                      ),
                      onPress: () {
                        Future.delayed(Duration.zero, () async {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                onPress: () {},
                cardColor: Theme.of(context).cardColor,
                cardChild: SliderWidget(),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableContainer(
                      onPress: () {

                      },
                      cardColor: Theme.of(context).cardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            weight.toString(),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                icon: CupertinoIcons.add,
                                onPress: (){
                                  setState(() {
                                   if(weight < 200){
                                     weight++;
                                   }
                                  });
                                },
                              ),
                              CustomIconButton(
                                icon: CupertinoIcons.minus,
                                onPress: (){
                                  setState(() {
                                    if(weight < 200){
                                      weight--;
                                    }
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      onPress: () {
                        print('oppress called');
                      },
                      cardColor: Theme.of(context).cardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            age.toString(),
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                icon: CupertinoIcons.add,
                                onPress: (){
                                  setState(() {
                                    if(age < 150){
                                      age++;
                                    }
                                  });
                                },

                              ),
                              CustomIconButton(
                                icon: CupertinoIcons.minus,
                                onPress: (){
                                  setState(() {
                                   if(age > 0){
                                     age--;
                                   }
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ResultPage()),
                );
              },
              child: Container(
                height: 70,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                color: Colors.pinkAccent,
                child: Center(
                  child: Text('CALCULATE',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            )
          ],
        ));
  }
}

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