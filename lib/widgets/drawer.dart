// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_tutorail/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String imageurl =
        'https://whatsappimages.in/wp-content/uploads/2023/10/baby-Boy-DP-1.jpg';
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: Text(
                    'Tushar kuchchal',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('tkuchchal530@gmail.com',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  )),
            ),
            ListTile(
              onTap: () {
               
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.purple,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.purple,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.purple,
              ),
              title: Text(
                'Email Me',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
