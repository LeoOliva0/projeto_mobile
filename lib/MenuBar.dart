import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  final void Function(int) onItemSelected;

  const BottomMenu({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      
      currentIndex: _selectedItemIndex,
      onTap: (index) {
        setState(() {
          _selectedItemIndex = index;
          widget.onItemSelected(index);
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
          label: 'Eventos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check),
          label: 'Tarefas',
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuraçoes',
        ),
      ],
    );
  }
}