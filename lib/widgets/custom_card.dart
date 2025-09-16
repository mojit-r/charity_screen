import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    // screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // background panel
        Column(
          children: [
            // background image
            Image.network(
              'https://images.pexels.com/photos/8892/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              height: screenheight * 0.28,
              width: screenWidth,
              fit: BoxFit.cover,
            ),

            // container below imgae
            Container(
              color: Color.fromARGB(255, 57, 131, 163),
              height: screenheight * 0.18,
              width: screenWidth,
            ),
          ],
        ),

        // foreground stuff
        Positioned(
          left: screenWidth * 0.04,
          top: screenheight * 0.219,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            height: screenheight * 0.12,
            width: screenWidth * 0.70,
            padding: EdgeInsets.all(8),
            child: Text(
              'heha i am just tasting my application for broader preferencers',
            ),
          ),
        ),
      ],
    );
  }
}
