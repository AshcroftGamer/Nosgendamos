import 'package:flutter/material.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      // color: Color(0xFF8599E8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            color: Color(0xFF6C5ECF),
            onPressed: () {

            },
            icon: const ImageIcon(
              AssetImage('assets/icons/Home.png'),
            ),
          ),
          IconButton(
            color: Color(0xFF808191),
            onPressed: () {

            },
            icon: const ImageIcon(
              AssetImage(
                'assets/icons/Bag 2.png',
              ),
            ),
          ),
          IconButton(
            tooltip: "ok",
            color: Color(0xFF808191),
            onPressed: () {
            },
            icon: const ImageIcon(
              AssetImage('assets/icons/dia.png'),
            ),
          ),
          IconButton(
            color: Color(0xFF808191),
            onPressed: () {

            },
            icon: const ImageIcon(
              AssetImage('assets/icons/chart.png'),
            ),
          ),
          TextButton(
              onPressed: () {


              },
              child: Column(
                children: [Icon(Icons.add), Text('Plus')],
              ))
        ],
      ),
    );
  }
}
