import 'package:flutter/material.dart';

class DrawerBuilder extends StatefulWidget {
  const DrawerBuilder({Key? key}) : super(key: key);

  @override
  State<DrawerBuilder> createState() => _DrawerState();
}

class _DrawerState extends State<DrawerBuilder> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Carteira'),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Dia'),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Chart'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
