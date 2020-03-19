import 'package:flutter/material.dart';
import 'package:top_ceo/screen/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Top CEO',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Baloo 2',
      ),
      home: ListScreen(),
    );
  }
}
