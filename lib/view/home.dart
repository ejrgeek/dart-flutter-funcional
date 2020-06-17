import 'package:flutter/material.dart';
import 'package:flutter_funcional/update/locality_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocalityView(),
    );
  }
}