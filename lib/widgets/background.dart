import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  
  final boxDecoration = const BoxDecoration( //Queda como una propiedad de clase    
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2 , 0.8],
        colors: [
          Color(0xff2E305F),
          Color(0xff202333),
        ]
      )
    );
  
  @override
  Widget build(BuildContext context) {
    return Stack (
      children: [
        
        Container(
          decoration: boxDecoration, // No veo que esté el texto, podría usarse un Stack
        ),

        //Pink Box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        ),

        
      ]
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(80)),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]
          )
          
        ),
      ),
    );
  }
}