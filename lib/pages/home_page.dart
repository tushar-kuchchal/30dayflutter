// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Flutter Tutorail'),
    ),
    
    drawer: Drawer(),);
  }
}
