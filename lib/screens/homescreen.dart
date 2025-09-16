import 'package:charity_screen/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {

    // screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      // AppBar of the Screen
      appBar: AppBar(
        title: Text('Record list'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        backgroundColor: Colors.black,
      ),

      // Body of the screen
      body: CustomCard(),
    );
  }
}
