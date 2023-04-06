import 'package:designs/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design' :( _ ) => const BasicDesignScreen(),
        'scroll_design' :( _ ) =>  ScrollScreen(),
        'home_screen': ( _ ) => HomeScreen(), 
        
      },
    );
  }
}