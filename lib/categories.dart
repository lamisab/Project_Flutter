import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 241),
      body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: ListView(children: [
              Column(
                children: [
                  Text(
                    "\n Types Of languages program",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.book_rounded,
                    name: "Dart",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.book_rounded,
                    name: "Javascript",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.book_rounded,
                    name: "Java",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.book_rounded,
                    name: "Payton",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.book_rounded,
                    name: "SQL",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowWidget(
                    icon: Icons.book_rounded,
                    name: "Swift",
                  ),
                ],
              ),
            ]),
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
              primary: Color.fromARGB(255, 240, 240, 240), // Background color
              onPrimary: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Row(children: [
              Icon(icon, size: 30, color: Color.fromARGB(255, 189, 228, 238)),
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
