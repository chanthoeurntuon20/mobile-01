import 'package:flutter/material.dart';
import 'package:tabcontrollerr/screnn/Front.dart';

void main() => runApp(TabController());
class TabController extends StatefulWidget {
  @override
  _TabControllerState createState() => _TabControllerState();
}

class _TabControllerState extends State<TabController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Front(),
    );
  }
}