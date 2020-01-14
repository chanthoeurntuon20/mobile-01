 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_mix/screens/menu.dart';

void main() => runApp(Mix());
class Mix extends StatefulWidget {
  @override
  _MixState createState() => _MixState();
}

class _MixState extends State<Mix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menu(),
    );
  }
}