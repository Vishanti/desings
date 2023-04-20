import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'Calendario'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Gráfica'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuarios')
      ],
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
