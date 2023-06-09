import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import './TarefasPage.dart';
import './ConfigurationPage.dart';
import './MenuBar.dart';

class Event {
  final String title;
  final String description;
  final DateTime date;

  Event(this.title, this.description, this.date);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Event>> _events = {};

  TextEditingController _eventTitleController = TextEditingController();
  TextEditingController _eventDescriptionController = TextEditingController();

  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Evita o erro de overflow ao abrir o teclado
      appBar: AppBar(
        backgroundColor: Color(0xff359f8a),
        title: Text('Bem-vindo!'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationWidget(
        currentIndex: _currentTab,
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildBody() {
    switch (_currentTab) {
      case 0:
        return _buildEventosTab();
      case 1:
        return TarefasPage();
      case 2:
        return ConfigurationPage();
      default:
        return Container();
    }
  }

  Widget _buildEventosTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Calendário:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TableCalendar(
          firstDay: DateTime.utc(2023, 01, 01),
          lastDay: DateTime.utc(2030, 01, 01),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          eventLoader: (day) {
            return _events[day] ?? [];
          },
          calendarStyle: CalendarStyle(
            markerDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff359f8a),
            ),
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff359f8a),
            ),
            todayDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff359f8a),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Lista de Eventos:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _events[_selectedDay]?.length ?? 0,
            itemBuilder: (context, index) {
              final event = _events[_selectedDay]![index];
              return ListTile(
                title: Text(event.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(event.description),
                    Text(
                      'Data do evento: ${event.date.day}/${event.date.month}/${event.date.year}',
                    ),
                  ],
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(event.title),
                        content: Text(event.description),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Fechar'),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    if (_currentTab == 0) {
      return FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Adicionar Evento'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _eventTitleController,
                      decoration: InputDecoration(
                        labelText: 'Título',
                      ),
                    ),
                    TextFormField(
                      controller: _eventDescriptionController,
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                      ),
                    ),
                  ],
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      if (_eventTitleController.text.isNotEmpty &&
                          _eventDescriptionController.text.isNotEmpty) {
                        setState(() {
                          _events[_selectedDay!] = [
                            ...(_events[_selectedDay!] ?? []),
                            Event(
                              _eventTitleController.text,
                              _eventDescriptionController.text,
                              _selectedDay!,
                            ),
                          ];
                          _eventTitleController.clear();
                          _eventDescriptionController.clear();
                          Navigator.pop(context);
                        });
                      }
                    },
                    child: Text('Adicionar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff359f8a),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff359f8a),
      );
    } else {
      return Container();
    }
  }
}
