import 'package:flutter/material.dart';

import '../shared/custom_bwhite_text.dart';
import '../shared/custom_white_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    // screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // first row - background panel
        Column(
          children: [
            // background image
            Image.network(
              'https://images.pexels.com/photos/8892/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              height: screenHeight * 0.28,
              width: screenWidth,
              fit: BoxFit.cover,
            ),

            // container below imgae
            Container(
              color: const Color.fromARGB(255, 57, 131, 163),
              height: screenHeight * 0.18,
              width: screenWidth,
            ),
          ],
        ),

        Positioned(
          left: screenWidth * 0.03,
          top: screenHeight * 0.219,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: screenHeight * 0.12,
                    width: screenWidth * 0.715,
                    padding: const EdgeInsets.fromLTRB(6, 0, 0, 4),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // liking card Heading Text
                            const Text(
                              'Hehe',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            // the liking button
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.heart_broken),
                            ),
                          ],
                        ),
                        SizedBox(height: screenWidth * 0.01),
                        // liking card discription text
                        const Text(
                          'heha i am just tasting my application for broader preferencers',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // space between liking card and circular percentage button
                  SizedBox(width: screenWidth * 0.018),

                  // circular button of 100% percentage
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 10, 75, 93),
                      foregroundColor: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(26),
                    ),
                    child: const Text('100%', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),

              // space between first row & second row
              SizedBox(height: screenHeight * 0.035),

              // second row - bottom info and action
              Row(
                children: [
                  // bottom left side texts
                  Row(
                    children: [
                      // bottom FUNDED text
                      Column(
                        children: [
                          const CustomBWhiteText(text: '500'),
                          SizedBox(height: screenHeight * 0.02),
                          const CustomWhiteText(text: 'FUNDED'),
                        ],
                      ),

                      SizedBox(width: screenWidth * 0.1),

                      //bottom GOALS text
                      Column(
                        children: [
                          const CustomBWhiteText(text: '5000'),
                          SizedBox(height: screenHeight * 0.02),
                          const CustomWhiteText(text: 'GOALS'),
                        ],
                      ),

                      SizedBox(width: screenWidth * 0.1),

                      // bottom ENDS IN text
                      Column(
                        children: [
                          const CustomBWhiteText(text: '36'),
                          SizedBox(height: screenHeight * 0.02),
                          const CustomWhiteText(text: 'ENDS IN'),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(width: screenWidth * 0.06),

                  // bottom left Pledge Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 57, 131, 163),
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    child: const Text('PLEDGE'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
