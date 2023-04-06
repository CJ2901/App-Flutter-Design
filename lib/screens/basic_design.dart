import 'dart:math' as math;
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: const [

            // Background Image
            Image(image: AssetImage('assets/landscape.jpg')),

            // Title
            Title(),

            // Button
            ButtonSection(),

            // Description
            Description()

          ]
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 40, vertical: 30),
      child: Row(
        children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold),),
                Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
              ],
            ),
          
          Expanded(child: Container()),
          const  Icon(Icons.star, color: Colors.red),
          const  Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 40, vertical: 5),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [

           CustomButtom( 
            color:  Colors.blueAccent,
            icon: Icons.phone,
            text: 'CALL'),

           CustomButtom( 
            color:  Colors.blueAccent,
            icon: Icons.route,
            text: 'ROUTE'),
            
           CustomButtom( 
            color:  Colors.blueAccent,
            icon: Icons.share,
            text: 'SHARE'),


        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final String text;
  final Color color;

  const CustomButtom({
    Key? key, 
    required this.icon, 
    required this.text, 
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon( icon , color: color),
        const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        Text( text , style: TextStyle(color: color)),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: const Text('Et cupidatat mollit elit adipisicing non ea do. Consequat voluptate consequat ea excepteur anim consequat anim non in velit eiusmod laborum. Deserunt laborum incididunt irure elit voluptate et excepteur aliquip magna ad. Ullamco adipisicing fugiat nisi deserunt tempor exercitation laborum consectetur adipisicing aliqua mollit elit officia. Amet adipisicing eiusmod magna esse sit eu. Minim anim enim sint eiusmod consectetur ipsum.',
                        textAlign: TextAlign.justify,),
      // Add a decoration to the container
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 3,
        ),
      ),

                    
    );
  }
}
