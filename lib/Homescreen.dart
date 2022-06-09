import 'package:flutter/material.dart';
import 'package:flutter_application_test/Profile.dart';
import 'package:flutter_application_test/cart.dart';
import 'package:flutter_application_test/categories.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  final _pageOptions = [categories(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LAN Programm"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          null,
          0,
        ),
        toolbarHeight: 80.2,
        toolbarOpacity: 0.6,
        elevation: 5,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(9.0),
              child: Image.asset(
                "MyImges/logo.jpeg",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )),
          _selectedIndex == 1
              ? IconButton(
                  onPressed: () {},
                  icon: Container(),
                )
              : IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Profile();
                    }));
                  },
                  icon: Icon(Icons.account_circle)),
        ],
      ),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 88, 110, 220)),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 88, 35, 152)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 101, 132, 234),
      ),
    );
  }
}
