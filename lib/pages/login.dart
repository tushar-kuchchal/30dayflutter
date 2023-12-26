// ignore_for_file: prefer_const_constructors, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_tutorail/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '';
  bool login = false;
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
              'Welcome $name',
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
                      labelText: 'UserName',
                    ),
                    onChanged: (value) => {
                      setState(
                        () => name = value,
                      )
                    },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        login = true;
                      });
                      await Future.delayed(Duration(milliseconds: 1200));
                      Navigator.pushNamed(context, MyRoute.home);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(login ? 25 : 10),
                        color: Colors.purple,
                      ),
                      height: 50,
                      width: login ? 50 : 150,
                      alignment: Alignment.center,
                      child: login
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       minimumSize: Size.fromHeight(50),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20)),
                  //       textStyle:
                  //           TextStyle(fontSize: 20, color: Colors.white)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoute.home);
                  //   },
                  //   child: Text('Login'),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
