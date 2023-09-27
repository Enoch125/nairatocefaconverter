import 'package:currency_converter/cfa_to_naira_page.dart';
import 'package:flutter/material.dart'; //

void main() {
  runApp(MyApp());
  //widget are building block of ui interface
}
//Material APP//create widget
//Types of widget
//Stateless widget, Stateful widget, inherited widget

//State- data that determine how a widget or screen should look like
//Stateless widget- is immutable , data cannot change at all
//Stateful widget- is muttable

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //It is an abstract class so we need to override//

  @override
  Widget build(BuildContext context) {
    // return const Text(
    //   "Hello World",
    //   textDirection: TextDirection.rtl,
    // );
    return const MaterialApp(
      home: CfaToNairaa(),
    );
  }
}
