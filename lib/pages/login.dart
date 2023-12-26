// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorail/utils/routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
            ),
            Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber.shade400),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: ' Enter UserName',
                        labelText: 'UserName'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: ' Enter Password',
                        labelText: 'Password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                    onPressed: () {
                      // print('you are login successfully');
                      Navigator.pushNamed(context, MyRoute.home);
                    },
                    child: Text('Login'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
