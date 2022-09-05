import 'package:flutter/material.dart';

class CarteiraPage extends StatefulWidget {
  const CarteiraPage({Key? key}) : super(key: key);

  @override
  State<CarteiraPage> createState() => _CarteiraPageState();
}

class _CarteiraPageState extends State<CarteiraPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Carteira_Page',
            style: TextStyle(fontSize: 35),
          ),
        ),

      ],
    );
  }
}
