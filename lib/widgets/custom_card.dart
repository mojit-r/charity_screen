import 'package:flutter/material.dart';

import '../shared/custom_bwhite_text.dart';
import '../shared/custom_white_text.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  List<String> imgs = [
    'https://plus.unsplash.com/premium_photo-1682092585257-58d1c813d9b4?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cG9vciUyMGNoaWxkfGVufDB8fDB8fHww',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQK4lYGtueo0rSDE_4OrlJYnBXen0600uNyzrhDRq8xGW0-PSnqGOYUf2tsfvdYnN1DrY&usqp=CAU',
    'https://images.pexels.com/photos/8892/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];

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
            // background image slider
            SizedBox(
              height: screenHeight * 0.27,
              width: screenWidth,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Image.network(
                  imgs[index],
                  // height: screenHeight * 0.27,
                  // width: screenWidth,
                  fit: BoxFit.cover,
                ),
              ),
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
          top: screenHeight * 0.209,
          child: Column(
            children: [
              // first row - white liking card & circular button
              Row(
                children: [
                  // Liking Card
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
                              icon: Image.asset(
                                'assets/images/filled_heart.png',
                                height: screenHeight * 0.024,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenWidth * 0.01),
                        // liking card discription text
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.12),
                          child: const Text(
                            'heha i am just testin my application for broader preferences',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
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
                  // bottom left status
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // status values
                      Row(
                        children: [
                          // rupee image
                          Image.asset(
                            'assets/images/rupee-indian.png',
                            height: screenHeight * 0.025,
                            color: Colors.white,
                          ),

                          // FUNDED value
                          const CustomBWhiteText(text: '500'),

                          SizedBox(width: screenWidth * 0.11),

                          // rupee image
                          Image.asset(
                            'assets/images/rupee-indian.png',
                            height: screenHeight * 0.025,
                            color: Colors.white,
                          ),

                          // GOALS value
                          const CustomBWhiteText(text: '5000'),

                          SizedBox(width: screenWidth * 0.11),

                          // ENDS IN value
                          const CustomBWhiteText(text: '36'),
                        ],
                      ),

                      // space between Status Values and Status Keys
                      SizedBox(height: screenHeight * 0.02),

                      // Status Keys
                      Row(
                        children: [
                          // FUNDED Key
                          const CustomWhiteText(text: 'FUNDED'),

                          SizedBox(width: screenWidth * 0.1),

                          // GOALS Key
                          const CustomWhiteText(text: 'GOALS'),

                          SizedBox(width: screenWidth * 0.1),

                          // ENDS IN Key
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
