import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              text: 'General',
              color: Colors.lightBlue,
              icon: Icons.border_all,
            ),
            _SingleCard(
              text: 'Transport',
              color: Colors.purple,
              icon: Icons.bus_alert_sharp,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Shopping',
              color: Colors.pinkAccent,
              icon: Icons.shopping_bag,
            ),
            _SingleCard(
              text: 'Bills',
              color: Colors.orange,
              icon: Icons.attach_money,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Entertainment',
              color: Colors.blue,
              icon: Icons.movie_creation_outlined,
            ),
            _SingleCard(
              text: 'Grocery',
              color: Colors.green,
              icon: Icons.local_grocery_store,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      widget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [this.color, Colors.white.withOpacity(0.95)],
                begin: Alignment.centerRight,
                end: Alignment.topLeft),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 35,
              child: Icon(
                this.icon,
                color: Colors.white,
                size: 30,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 15),
        ),
      ],)
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget widget;

  const _CardBackground({
    super.key, 
    required this.widget
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(17),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            margin: EdgeInsets.all(0),
            height: 150,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: widget,
          ),
        ),
      ),
    );
  }
}
