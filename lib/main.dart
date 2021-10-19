import'package:flutter/material.dart';
import 'package:msp_ainshams/data/shared/styles/themes/themes.dart';

import 'layout/main_layout.dart';


void main(){

  runApp(const MyApp());

}



class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      theme:lightTheme,
      themeMode: ThemeMode.light,
      home: const MainLayout(),

    );

  }
}