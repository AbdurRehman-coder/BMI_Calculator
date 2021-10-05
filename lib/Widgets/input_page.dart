import 'package:bmi_calculator/Widgets/icon_content.dart';
import 'package:bmi_calculator/Widgets/reusable_container.dart';
import 'package:bmi_calculator/Widgets/slider.dart';
import 'package:flutter/material.dart';

//enum to select male/female as a gender
enum Gender{ male, female}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //enum Gender instance, where we will store the selected gender
  // when user pressed the card
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
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
                  //Male Card
               child: ReusableContainer(
                 cardColor: selectedGender == Gender.male ? Theme.of(context).cardColor :
                 Theme.of(context).colorScheme.secondary,

                 cardChild: IconContent(

                   icon: Icons.male_sharp,
                   label: 'MALE',
                 ),
                 onPress:  (){
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

                    cardColor:  selectedGender == Gender.female ? Theme.of(context).cardColor :
                    Theme.of(context).colorScheme.secondary,
                    cardChild: IconContent(
                      icon: Icons.female_sharp,
                      label: 'FEMALE',
                    ),
                    onPress:
                        (){
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
              onPress: (){

              },
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
                  onPress: (){
                    print('oppress called');
                  },
                  cardColor: Theme.of(context).cardColor,
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  onPress: (){
                    print('oppress called');
                  },
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