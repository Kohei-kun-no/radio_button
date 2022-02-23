import 'package:flutter/material.dart';
import 'package:pixel5_env/ui/ques_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RadioButton Demo',
      home: HomeScreen(),
    );
  }
}