import 'package:flutter/material.dart';

class AgendaServico extends StatefulWidget {
  const AgendaServico({Key? key}) : super(key: key);

  @override
  State<AgendaServico> createState() => _AgendaServicoState();
}

class _AgendaServicoState extends State<AgendaServico> {
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

        ],
      ),
    );
  }
}
