import 'package:flutter/material.dart';


class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Chart_Page', style: TextStyle(fontSize: 35),));
  }
}

