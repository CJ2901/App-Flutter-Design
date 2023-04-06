import 'package:flutter/material.dart';

import 'package:designs/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //Background
            Background(),
            //MainContent
            _HomeBody()
          ],
        ),
        bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titles
          PageTitle(),
          //Buttons
          CardTable()

        ],
      ),
    );
    ;
  }
}