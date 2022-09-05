import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _opcaoSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _opcaoSelecionada,
      type: BottomNavigationBarType.fixed,
      // backgroundColor: Colors.black45,
      onTap: (opcao) {
        setState(() {
          _opcaoSelecionada = opcao;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/Home.png'),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              'assets/icons/Bag 2.png',
            ),
          ),
          label: 'Carteira',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/dia.png'),
          ),
          label: 'Dia',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/chart.png'),
          ),
          label: 'Charts',
        ),
      ],
    );
  }
}
