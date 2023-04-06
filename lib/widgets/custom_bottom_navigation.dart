import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 25),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_outlined, size: 25),
          label: 'Gráfica'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 25),
          label: 'Usuarios'
        ),
      ],
      currentIndex: 1,
      onTap: (index) => print(index)
    );
  }
}