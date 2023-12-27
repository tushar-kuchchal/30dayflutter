// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_tutorail/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print(' ${item.name} pressed');
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          '\$ ${item.price}',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.purple, fontSize: 20),
        ),
      ),
    );
  }
}
