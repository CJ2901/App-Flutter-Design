import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(child: Container(height: 30,)),
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 17, )),
          ],
      )),
    );
  }
}