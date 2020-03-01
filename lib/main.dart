import 'package:flutter/material.dart';
import 'package:soft_ui_development/screens/home_page.dart';

void main() => runApp(NeumorphicApp());

class NeumorphicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blueGrey.shade100,
        scaffoldBackgroundColor: Colors.blueGrey.shade100,
        dialogBackgroundColor: Colors.blueGrey.shade100,
      ),
      home: HomePage(),
    );
  }
}
