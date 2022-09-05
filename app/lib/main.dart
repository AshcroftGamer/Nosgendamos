
import 'package:app_nosagendamos/components/pages/agenda/agendamento_page.dart';
import 'package:app_nosagendamos/components/pages/page_home.dart';
import 'package:flutter/material.dart';
import 'components/pages/agenda/pages/agenda_dia.dart';
import 'components/pages/agenda/pages/agenda_servico.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nos Agendamos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => PageHome(),
        '/agdia': (context)=> AgendaDia(),
        '/agserv':(context)=> AgendaServico(),
        '/agend':(context)=> AgendamentoPage(),
      },
    );
  }
}
