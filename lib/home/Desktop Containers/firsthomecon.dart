import 'package:autox_global_trade/Authentication/admin_dialog_auth.dart';
import 'package:autox_global_trade/Authentication/dialog_auth.dart';
import 'package:autox_global_trade/Top%20Container/button1.dart';
import 'package:autox_global_trade/Top%20Container/crypto_price.dart';
import 'package:autox_global_trade/Top%20Container/dialog_video.dart';
import 'package:autox_global_trade/Top%20Container/search.dart';
//import 'package:autox_global_trade/Top%20Container/search.dart';
//import 'package:autox_global_trade/Top%20Container/top_container.dart';
//import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class FirstHomeContainer extends StatelessWidget {
  const FirstHomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      height: 800, // Set the height as per your requirement
      // Other container properties and widgets go here

      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'AutoX Global Trade',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 350),
                  // const Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     TopBarButton(
                  //       text: 'Products',
                  //       textColor: Colors.white,
                  //     ),
                  //     TopBarButton(
                  //       text: 'Community',
                  //       textColor: Colors.white,
                  //     ),
                  //     TopBarButton(
                  //       text: 'Markets',
                  //       textColor: Colors.white,
                  //     ),
                  //     TopBarButton(
                  //       text: 'News',
                  //       textColor: Colors.white,
                  //     ),
                  //     TopBarButton(
                  //       text: 'Brokers',
                  //       textColor: Colors.white,
                  //     ),
                  //     TopBarButton(
                  //       text: 'More',
                  //       textColor: Colors.white,
                  //     ),
                  //   ],
                  // ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          // Handle the tap event here
                          // For example, you can navigate to a new screen or perform any other action
                          showDialog(
                            context: context,

                            /// for call and show AuthDialog widget when click
                            builder: (context) => const AdminAuthDialog(),
                          );
                        },
                        child: const Icon(
                          Icons.person,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      ClipPath(
                        clipper: ParallelogramClipper(
                            10.0), // Adjust the radius as needed
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,

                              /// for call and show AuthDialog widget when click
                              builder: (context) => const AuthDialog(),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Set to transparent to allow the gradient background
                            elevation: 2.0,
                            padding: EdgeInsets.zero, // Added padding
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.blue, // Replace with your first color
                                  Colors
                                      .green, // Replace with your second color
                                  Colors
                                      .orange, // Replace with your third color
                                ],
                              ),
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0), // Added padding
                              child: const Text(
                                'Explore',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Container(
              height: 250, // Set the desired height
              color: Colors.transparent, // Blue background color
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Look First /\nThen Leap.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 320, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: Container(
              height: 100, // Set the desired height
              color: Colors.transparent, // Blue background color
              // Add your content for the third container here
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The best trades require research, then',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text(
                          'commitment.',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 400, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: FractionallySizedBox(
              widthFactor: 0.8, // Adjust the width factor as needed
              child: SearchBarWidget(),
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                height: 100,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MouseRegion(
                          child: InkWell(
                            onTap: () {
                              // Handle the click event for the first black container here
                              // Navigate to the website link here
                              // launch(
                              // 'https://www.tradingview.com/chart/?symbol=BITSTAMP%3ABTCUSD'); // Replace with your actual website link
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 13),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        child: Image.asset(
                                          'assets/1.jpeg', // Replace with the path to your image asset
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        BTCPriceWidget(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10), // Adjust spacing as needed
                        MouseRegion(
                          child: InkWell(
                            onTap: () {
                              // Handle the click event for the second black container here

                              //launch(
                              //'https://www.tradingview.com/chart/?symbol=BITSTAMP%3AEthUSD');
                            },
                            child: Container(
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 13),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: Image.asset(
                                        'assets/2.png', // Replace with the path to your image asset
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ETHPriceWidget(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20), // Adjust spacing as needed
                        GestureDetector(
                          onTap: () {
                            // Handle the click event for the third black container here
                            //launch(
                            //'https://www.tradingview.com/chart/?symbol=BITSTAMP%3ALTCUSD');
                          },
                          child: Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(width: 13),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Image.asset(
                                      'assets/3.png', // Replace with the path to your image asset
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    LTCPriceWidget(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            // Show the dialog when the container is pressed
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return DialogContainer();
                              },
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(width: 10), // Adjusted spacing
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons
                                          .play_circle_fill, // Replace with the desired icon
                                      size: 20,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10), // Adjusted spacing
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Watch Explainer',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 570, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: Container(
              height: 100, // Set the desired height
              color: Colors.transparent, // Blue background color
              child: const Center(
                child: Icon(
                  Icons
                      .keyboard_arrow_down, // Use the downward-facing arrow icon
                  size: 40, // Set the desired size
                  color: Colors.white, // Set the desired color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
