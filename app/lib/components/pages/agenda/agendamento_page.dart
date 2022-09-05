
import 'package:app_nosagendamos/components/pages/agenda/pages/agenda_dia.dart';
import 'package:app_nosagendamos/components/partials/cal_calendar.dart';
import 'package:flutter/material.dart';

class AgendamentoPage extends StatefulWidget {
  const AgendamentoPage({Key? key}) : super(key: key);

  @override
  State<AgendamentoPage> createState() => _AgendamentoPageState();
}

class _AgendamentoPageState extends State<AgendamentoPage> {
  // late DateTime data;
  void _openData() {

    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => AgendaDia())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              'Agendamentos',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('clicou'),
          ),
        ],
      ),
      Row(
        children: [
          Text('Selecione a Data'),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_rounded),
          ),
          Text('Março'),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
      CalCalendar(
        onDateSelected: (DateTime date) {
          _openData();
        },
        onTapRange: (CalendarRangeSelected range) => null,
      )
    ]);
  }
}
