import 'package:flutter/material.dart';

import '../../agenda/pages/agenda_servico.dart';


class AgendaDia extends StatefulWidget {
  const AgendaDia({Key? key}) : super(key: key);

  @override
  State<AgendaDia> createState() => _AgendaDiaState();
}

class _AgendaDiaState extends State<AgendaDia> {
  // Map<DateTime> data = ModalRoute.of(context)?.settings.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda do Dia'),
      ),
      body: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Voltar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AgendaServico())
              );
            },
            child: Text('Abrir serviço'),
          ),
        ],
      ),
    );
  }
}
