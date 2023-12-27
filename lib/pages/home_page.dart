// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import "package:flutter/material.dart";
import "package:flutter_tutorail/models/catalog.dart";
import "package:flutter_tutorail/widgets/drawer.dart";
import "package:flutter_tutorail/widgets/item_widget.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(50, (index) => CatalogModal.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('catalog app'),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummylist[index]);
          },
        ),
      ),
    );
  }
}
