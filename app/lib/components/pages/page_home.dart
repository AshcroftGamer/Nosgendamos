import 'package:app_nosagendamos/components/pages/home/home_page.dart';
import 'package:app_nosagendamos/components/pages/carteira/carteira_page.dart';
import 'package:app_nosagendamos/components/pages/chart/chart_page.dart';
import 'package:app_nosagendamos/components/pages/agenda/agendamento_page.dart';
import 'package:flutter/material.dart';

import '../partials/drawer.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);
  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBuilder(),
      appBar: AppBar(
        title: const Center(
          child: Text('NosAgendamos', style: TextStyle(fontSize: 35),),
        ),
        backgroundColor: Colors.blue,
        actions: const [],
      ),
      body:IndexedStack(
        index: _opcaoSelecionada,
        children: const [
          HomePage(),
          CarteiraPage(),
          AgendamentoPage(),
          ChartPage(),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _opcaoSelecionada,
      type: BottomNavigationBarType.fixed,
      // backgroundColor: Colors.black45,
      onTap: (opcao) {
        setState((){
          _opcaoSelecionada = opcao;
        });
      },
      items: const [
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
