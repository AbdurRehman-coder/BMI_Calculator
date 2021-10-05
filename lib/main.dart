import 'package:flutter/material.dart';

import 'Widgets/input_page.dart';
import 'Widgets/themes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
    darkTheme: MyTheme.darkTheme(context),
      home: const InputPage(),
    );
    }
}