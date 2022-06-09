import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_test/Homescreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 246),
      body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: ListView(
              children: [
                Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 243, 243),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 150,
                    width: 150,
                    child: Icon(Icons.person,
                        size: 100, color: Color.fromARGB(255, 80, 15, 95)),
                  ),
                  Text(
                    "User name",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                        decoration: InputDecoration(labelText: 'Enter Email'),
                        cursorColor: Color.fromARGB(255, 80, 15, 95),
                        autofocus: true),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Enter Password'),
                      cursorColor: Color.fromARGB(255, 80, 15, 95),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homescreen()));
                      }),
                      child: Container(
                        child: Text(
                          "Sign in",
                        ),
                        height: 40,
                        width: 70,
                      ))
                ]),
              ],
            ),
          )),
    );
  }
}

class RowWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  const RowWidget({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 50),
              primary: Colors.white, // Background color
              onPrimary: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Row(children: [
              Icon(icon, size: 30, color: Color.fromARGB(255, 57, 18, 128)),
              SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
