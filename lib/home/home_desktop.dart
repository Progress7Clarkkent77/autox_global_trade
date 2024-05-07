//import 'package:autox_global_trade/Top%20Container/animation_text.dart';
//import 'package:autox_global_trade/Top%20Container/animation_text1.dart';
// import 'package:autox_global_trade/Top%20Container/bouncing.dart';
// import 'package:autox_global_trade/Top%20Container/button1.dart';
// import 'package:autox_global_trade/Top%20Container/search.dart';
// import 'package:autox_global_trade/Top%20Container/top_container.dart';
//import 'package:autox_global_trade/Top%20Container/bouncing.dart';
//import 'package:autox_global_trade/Top%20Container/button1.dart';
//import 'package:autox_global_trade/Top%20Container/search.dart';
//import 'package:autox_global_trade/Top%20Container/top_container.dart';
import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
import 'package:autox_global_trade/Top%20Container/financial_data.dart';
import 'package:autox_global_trade/Top%20Container/stock.dart';
import 'package:autox_global_trade/Top%20Container/third_container.dart';
//import 'package:autox_global_trade/Top%20Container/market_chart1.dart';
import 'package:autox_global_trade/Top%20Container/your_w.dart';
//import 'package:autox_global_trade/Top%20Container/market_chart1.dart';
import 'package:autox_global_trade/home/Desktop%20Containers/firsthomecon.dart';
import 'package:autox_global_trade/home/Desktop%20Containers/fourthomecon.dart';
import 'package:autox_global_trade/home/Desktop%20Containers/secondhomecon.dart';
import 'package:autox_global_trade/home/Desktop%20Containers/thirdhomecon.dart';
import 'package:autox_global_trade/home/home_mobile.dart';
import 'package:autox_global_trade/home/home_tablet.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  String selectedItem = "";
  Map<String, bool> itemHoverStates = {
    "Indices": false,
    "Stocks": false,
    "Crypto": false,
    "Forex": false,
    "Futures": false,
    "Bonds": false,
  };

  String generateFinancialData() {
    double percentage = FinancialDataGenerator.generateRandomPercentage();
    double price = FinancialDataGenerator.generateRandomPrice();
    return '${percentage.toStringAsFixed(2)}% (${price.toStringAsFixed(2)} USD)';
  }

  Color determineTextColor() {
    double percentage = FinancialDataGenerator.generateRandomPercentage();
    return percentage < 0 ? Colors.red : Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return const MobileHome();
          } else if (constraints.maxWidth < 1200) {
            // Tablet layout
            return const TabletHome();
          } else {
            // Desktop layout
            return SingleChildScrollView(
              child: Column(
                children: [
                  const FirstHomeContainer(),
                  const SecondHomeContainer(),
                  const ThirdHomeContainer(),
                  const FourthHomeContainer(),
                  // Container(
                  //   color: Colors.white,
                  //   height: 800,
                  //   width: double.infinity,
                  //   child: Column(
                  //     children: [
                  //       // Blue Container
                  //       Container(
                  //         color: Colors.transparent,
                  //         width: double.infinity,
                  //         height: 105,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(26.0),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               TextButton(
                  //                 onPressed: () {
                  //                   // Handle button press logic
                  //                 },
                  //                 style: TextButton.styleFrom(
                  //                   primary: Colors.black,
                  //                 ),
                  //                 child: const Text(
                  //                   "Market Summary>",
                  //                   style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     fontSize: 40,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       const SizedBox(height: 2),
                  //       // Green Container with Horizontal List
                  //       Container(
                  //         height: 40,
                  //         width: double.infinity,
                  //         color: Colors.transparent,
                  //         child: Row(
                  //           children: [
                  //             for (var item in [
                  //               "Indices",
                  //               "Stocks",
                  //               "Crypto",
                  //               "Forex",
                  //               "Futures",
                  //               "Bonds"
                  //             ])
                  //               Expanded(
                  //                 child: InkWell(
                  //                   onTap: () {
                  //                     setState(() {
                  //                       selectedItem = item;
                  //                     });
                  //                     // Handle click for each item (Indices, Stocks, etc.)
                  //                     // You can navigate or update the UI accordingly
                  //                   },
                  //                   onHover: (isHovered) {
                  //                     setState(() {
                  //                       itemHoverStates[item] = isHovered;
                  //                     });
                  //                     // Add hover effect here
                  //                   },
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.all(8.0),
                  //                     child: Container(
                  //                       decoration: BoxDecoration(
                  //                         border: Border.all(
                  //                           color:
                  //                               itemHoverStates[item] ?? false
                  //                                   ? Colors.transparent
                  //                                   : Colors.deepOrange,
                  //                           width: 2.0,
                  //                         ),
                  //                         borderRadius:
                  //                             BorderRadius.circular(5.0),
                  //                         color: itemHoverStates[item] ?? false
                  //                             ? Colors.transparent
                  //                             : Colors.orange.withOpacity(0.1),
                  //                       ),
                  //                       child: Center(
                  //                         child: Text(
                  //                           item,
                  //                           style: TextStyle(
                  //                             color:
                  //                                 itemHoverStates[item] ?? false
                  //                                     ? Colors.black
                  //                                     : Colors.orange,
                  //                             fontWeight: FontWeight.bold,
                  //                             // If itemHoverStates[item] is null, use false as the default value
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //           ],
                  //         ),
                  //       ),

                  //       const SizedBox(height: 3),
                  //       // Blue Container with List of Rectangular Containers
                  //       Container(
                  //         height: 50,
                  //         width: double.infinity,
                  //         color: Colors.white,
                  //         child: ListView(
                  //           scrollDirection: Axis.horizontal,
                  //           children: [
                  //             // Rounded Container with arrow facing left (Initially hidden)
                  //             const SizedBox(width: 15),
                  //             // Rectangular Containers
                  //             for (int index = 0; index < 8; index++)
                  //               GestureDetector(
                  //                 onTap: () {
                  //                   // Handle click on the rectangular container
                  //                   // Display shadow container with radius and big market chart in the yellow container
                  //                 },
                  //                 child: Center(
                  //                   child: Container(
                  //                     margin: const EdgeInsets.symmetric(
                  //                         horizontal: 5.0),
                  //                     width: MediaQuery.of(context).size.width /
                  //                             8 -
                  //                         20,
                  //                     height: 50,
                  //                     decoration: BoxDecoration(
                  //                       color: Colors
                  //                           .white, // Set color based on your design,
                  //                       borderRadius:
                  //                           BorderRadius.circular(8.0),
                  //                       boxShadow: [
                  //                         BoxShadow(
                  //                           color:
                  //                               Colors.black.withOpacity(0.3),
                  //                           offset: const Offset(2, 0),
                  //                           blurRadius: 4,
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     child: Row(
                  //                       mainAxisAlignment:
                  //                           MainAxisAlignment.spaceEvenly,
                  //                       children: [
                  //                         // Circular with different color and number
                  //                         Container(
                  //                           width: 35,
                  //                           height: 35,
                  //                           decoration: const BoxDecoration(
                  //                             color: Colors
                  //                                 .orange, // Set a different color,
                  //                             shape: BoxShape.circle,
                  //                           ),
                  //                           child: Center(
                  //                             child: Text(
                  //                               [
                  //                                 '500',
                  //                                 '100',
                  //                                 '30',
                  //                                 '225',
                  //                                 '100',
                  //                                 'X',
                  //                                 '40',
                  //                                 'FR'
                  //                               ][index],
                  //                               style: const TextStyle(
                  //                                   color: Colors.white,
                  //                                   fontSize: 15.0,
                  //                                   fontWeight:
                  //                                       FontWeight.bold),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         // Horizontal space
                  //                         const SizedBox(width: 5.0),
                  //                         // Vertical List (Top and Bottom)
                  //                         Column(
                  //                           crossAxisAlignment:
                  //                               CrossAxisAlignment.start,
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.center,
                  //                           children: [
                  //                             // Top: Indices names (replaced with your list)
                  //                             Text(
                  //                               [
                  //                                 'S&P 500',
                  //                                 'Nasdaq 100',
                  //                                 'Dow 30',
                  //                                 'Nikkei 225',
                  //                                 'FTSE 100',
                  //                                 'Dax',
                  //                                 'CAC 40',
                  //                                 'FTSE MIB'
                  //                               ][index],
                  //                               style: const TextStyle(
                  //                                 color: Colors.black,
                  //                                 fontWeight: FontWeight.bold,
                  //                                 fontSize: 15.0,
                  //                               ),
                  //                             ),
                  //                             // Bottom: Prices and Percentage (placeholders)
                  //                             Text(
                  //                               generateFinancialData(),
                  //                               style: TextStyle(
                  //                                 color: determineTextColor(),
                  //                                 fontSize: 10.0,
                  //                                 fontWeight: FontWeight.bold,
                  //                               ),
                  //                             ),
                  //                           ],
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             // Rounded Container with arrow facing right
                  //             GestureDetector(
                  //               onTap: () {
                  //                 // Scroll horizontally and display the remaining four rectangular containers
                  //               },
                  //               child: Container(
                  //                 margin: const EdgeInsets.symmetric(
                  //                     horizontal: 5.0),
                  //                 width: 30,
                  //                 height: 50,
                  //                 decoration: BoxDecoration(
                  //                   color: Colors.white,
                  //                   borderRadius: const BorderRadius.only(
                  //                     topRight: Radius.circular(30.0),
                  //                     bottomRight: Radius.circular(30.0),
                  //                   ),
                  //                   boxShadow: [
                  //                     BoxShadow(
                  //                       color: Colors.black.withOpacity(0.3),
                  //                       offset: const Offset(2, 0),
                  //                       blurRadius: 4,
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 child: const Center(
                  //                   child: Icon(
                  //                     Icons.arrow_forward_ios,
                  //                     color: Colors.black,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),

                  //       const SizedBox(height: 5),
                  //       // Yellow Container (Market Chart)
                  //       Container(
                  //         height: 500,
                  //         width: double.infinity,
                  //         color: Colors.transparent,
                  //         child: MarketChartWidget(),
                  //         // Add your market chart widget here
                  //       ),
                  //       // Add remaining containers for Stocks, Crypto, Forex, Futures, Bonds
                  //     ],
                  //   ),
                  // ),
                  //------------------------------------------------------------------
                  // Container(
                  //   // Second container
                  //   color: Colors.red, // Change color or add your content
                  //   height: 900, // Set the height as per your requirement
                  //   // Other container properties and widgets go here
                  // ),
                  // Container(
                  //   // Second container
                  //   color: Colors.green, // Change color or add your content
                  //   height: 900, // Set the height as per your requirement
                  //   // Other container properties and widgets go here
                  // ),
                  Container(
                    color: Colors.transparent,
                    height: 380,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Child container at the top
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            height: 320,
                            width: double.infinity,
                            padding: const EdgeInsets.all(30),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Consider AutoX Global Trade\nif you’re looking for:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 28,
                                      shadows: [
                                        Shadow(
                                          color: Colors.grey,
                                          offset: Offset(1.3, 1.3),
                                          blurRadius: 0.3,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                // Other container properties and widgets go here

                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    color: Colors.deepOrange,
                                  ),
                                  title: Text(
                                    "A way to invest for both near and long-term needs",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    color: Colors.deepOrange,
                                  ),
                                  title: Text(
                                    "Investments across multiple investment vehicles so your money is diversified",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.check_circle,
                                    color: Colors.deepOrange,
                                  ),
                                  title: Text(
                                    "Access to a portfolio that is professionally managed with as little as \$100 to start",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Other widgets or containers in the second container go here
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 600,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Child container at the top
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            height: 188,
                            width: double.infinity,
                            padding: const EdgeInsets.all(30),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'What We Can Do For You',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 28,
                                      shadows: [
                                        Shadow(
                                          color: Colors.grey,
                                          offset: Offset(1.3, 1.3),
                                          blurRadius: 0.3,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                // Other container properties and widgets go here

                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'We are here to maximize your long-run economic welfare through investments in \nreputable assets.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Other widgets or containers in the second container go here
                        Container(
                          height: 310,
                          color: Colors.transparent,
                          width: double.infinity,
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container 1
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 220) /
                                        3,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.money_sharp,
                                        size: 40,
                                        color: Colors.purple,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Financial Planning',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          shadows: [
                                            Shadow(
                                              color: Colors.grey,
                                              offset: Offset(1.3, 1.3),
                                              blurRadius: 0.3,
                                            ),
                                          ],
                                          color: Colors.deepOrange,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'A good financial plan is the blueprint that helps you make decisions holistically and confidently. We can help our clients with budgeting and cash flow analysis, estate and tax planning, and even strategies for maximizing Social Security.',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Container 2
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 220) /
                                        3,
                                margin:
                                    const EdgeInsets.only(right: 10, left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.work_history,
                                        size: 40,
                                        color: Colors.purple,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Retirement Planning',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            shadows: [
                                              Shadow(
                                                color: Colors.grey,
                                                offset: Offset(1.3, 1.3),
                                                blurRadius: 0.3,
                                              ),
                                            ],
                                            color: Colors.deepOrange),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'We work now to help you stop working later. Tell us when and where you want to retire, and how much you’ve saved so far. We’ll help give you a sense of where you stand and guide you on the path forward.',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Container 3
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 220) /
                                        3,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.manage_accounts_outlined,
                                        size: 40,
                                        color: Colors.purple,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Risk Management',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            shadows: [
                                              Shadow(
                                                color: Colors.grey,
                                                offset: Offset(1.3, 1.3),
                                                blurRadius: 0.3,
                                              ),
                                            ],
                                            color: Colors.deepOrange),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Through timely, in-depth analysis of companies, industries, markets, and world economies, Multi Globaldive Finx has earned its reputation as a leader in the field of risk investment research and risk management.',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 600,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Child container at the top
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            height: 100,
                            width: double.infinity,
                            padding: const EdgeInsets.all(30),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'Getting Started in 3 Steps',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 28,
                                      shadows: [
                                        Shadow(
                                          color: Colors.grey,
                                          offset: Offset(1.3, 1.3),
                                          blurRadius: 0.3,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),

                                // Other container properties and widgets go here
                              ],
                            ),
                          ),
                        ),

                        // Other widgets or containers in the second container go here
                        Container(
                          height: 410,
                          color: Colors.transparent,
                          width: double.infinity,
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container 1
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 150) /
                                        2,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        height: 20), // Adjusted from 40 to 20
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: const Icon(
                                                Icons.pages,
                                                size: 50,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Register an Account',
                                                style: TextStyle(
                                                  color: Colors.purple,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1.3, 1.3),
                                                      blurRadius: 0.3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Open an Account for free in just few minutes and verify your \nemail.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: const Icon(
                                                Icons.manage_search,
                                                size: 50,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Fund your Account',
                                                style: TextStyle(
                                                  color: Colors.purple,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1.3, 1.3),
                                                      blurRadius: 0.3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Easy and Secure, choose one of the multiple payment \nmethods available, make deposit and get funded instantly.',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: const Icon(
                                                Icons.workspace_premium,
                                                size: 50,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Start a Plan',
                                                style: TextStyle(
                                                  color: Colors.purple,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1.3, 1.3),
                                                      blurRadius: 0.3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Choose any investment plan that suits your financial status \nand start earning instantly.',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Container 2
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 150) /
                                        2,
                                margin:
                                    const EdgeInsets.only(right: 10, left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/5.jpeg',
                                    fit: BoxFit
                                        .cover, // You can use BoxFit.contain or BoxFit.fill based on your requirement
                                  ),
                                ),
                              ),

                              //SizedBox(width: 30),

                              // Container 3
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Container(
                  // Second container
                  //color: Colors.green, // Change color or add your content
                  //height: 900,
                  const YourWidget(), // Set the height as per your requirement
                  // Other container properties and widgets go here
                  //),
                  Container(
                    color: Colors.transparent,
                    height: 850,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Child container at the top
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            height: 100,
                            width: double.infinity,
                            padding: const EdgeInsets.all(30),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'Best Solutions For Your Investment',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 28,
                                      shadows: [
                                        Shadow(
                                          color: Colors.grey,
                                          offset: Offset(1.3, 1.3),
                                          blurRadius: 0.3,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),

                                // Other container properties and widgets go here
                              ],
                            ),
                          ),
                        ),

                        // Other widgets or containers in the second container go here
                        Container(
                          height: 700,
                          color: Colors.transparent,
                          width: double.infinity,
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container 1
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 150) /
                                        2,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        height: 20), // Adjusted from 40 to 20
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: const Icon(
                                                Icons.key_rounded,
                                                size: 50,
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Enhance Security',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1.3, 1.3),
                                                      blurRadius: 0.3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'We protect our investors with the best sophisticated online \nprotection measures and high grade ssl encryption',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: const Icon(
                                                Icons.manage_search,
                                                size: 50,
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'High Performance',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1.3, 1.3),
                                                      blurRadius: 0.3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'In the crypto world speed is everything. That is why we build \nour platform for maximum speed from human resources to \nA.I integration',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5.0,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              child: const Icon(
                                                Icons.workspace_premium,
                                                size: 50,
                                                color: Colors.purple,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Unbeatable Support',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.grey,
                                                      offset: Offset(1.3, 1.3),
                                                      blurRadius: 0.3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Our team are always available to respond to issues when \never they arise.',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Container 2
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 150) /
                                        2,
                                margin:
                                    const EdgeInsets.only(right: 10, left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/4.png',
                                    fit: BoxFit
                                        .cover, // You can use BoxFit.contain or BoxFit.fill based on your requirement
                                  ),
                                ),
                              ),

                              //SizedBox(width: 30),

                              // Container 3
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 300,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Child container at the top

                        // Other widgets or containers in the second container go here
                        Container(
                          height: 260,
                          color: Colors.transparent,
                          width: double.infinity,
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container 1
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 150) /
                                        2,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Center the Column vertically
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Center the Text horizontally
                                  children: [
                                    SizedBox(height: 15),
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 130),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: Text(
                                                  'Investing with Impact',
                                                  style: TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontSize: 34.0,
                                                    fontWeight: FontWeight.bold,
                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.grey,
                                                        offset:
                                                            Offset(1.3, 1.3),
                                                        blurRadius: 0.3,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Container 2
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 150) /
                                        2,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      blurRadius: 5.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    SizedBox(
                                        height: 20), // Adjusted from 40 to 20
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 30),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '“To us, the necessary capital to have real impact, sustainable investing can’t \nbe limited to investors willing to accept unattractive returns in order to create \nsocial good. Getting to scale requires investment products that seek attractive \nreturns while benefiting society. This is the philosophy behind our Investing \nwith Impact strategy."',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //SizedBox(width: 30),

                              // Container 3
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    // Second container
                    color: Colors.white, // Change color or add your content
                    height: 900, // Set the height as per your requirement
                    child: Row(
                      children: [
                        Container(
                          height: 400,
                          width: 792,
                          decoration: const BoxDecoration(
                            // 0.5 represents the transparency level (0.0 to 1.0)
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/d3.png'), // Make sure to adjust the path based on your project structure
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 900,
                          width: 800,
                          //color: Colors.green,
                          decoration: const BoxDecoration(
                            // 0.5 represents the transparency level (0.0 to 1.0)
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/d2.png'), // Make sure to adjust the path based on your project structure
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // Second container
                    color: Colors.blueGrey, // Change color or add your content
                    height: 900, // Set the height as per your requirement
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 792,
                          decoration: const BoxDecoration(
                            // 0.5 represents the transparency level (0.0 to 1.0)
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/d1.png'), // Make sure to adjust the path based on your project structure
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 900,
                          width: 800,
                          //color: Colors.green,
                          decoration: const BoxDecoration(
                            // 0.5 represents the transparency level (0.0 to 1.0)
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/Whats31.png'), // Make sure to adjust the path based on your project structure
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // Second container
                    color:
                        Colors.transparent, // Change color or add your content
                    height: 400, // Set the height as per your requirement
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          color: Colors.transparent,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your funds are held in top-tier institutions",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "The AutoX Global Trade works with globally renowned banking partners including:",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: const BoxDecoration(
                            // 0.5 represents the transparency level (0.0 to 1.0)
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/d5.png'), // Make sure to adjust the path based on your project structure
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 100,
                          color: Colors.transparent,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "* These banks are partnered withe the Auto Global Trade group and do not serve all entities within the group",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Other container properties and widgets go here
                  ),
                  Container(
                    // Second container
                    color:
                        Colors.transparent, // Change color or add your content
                    height: 900, // Set the height as per your requirement
                    // Other container properties and widgets go here
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          color: Colors.transparent,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Trusted worlwide",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Discover why millions of investors  from over 100 \ncountries joined AutoX Global Trade ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 600,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/d4.png'),
                              fit: BoxFit
                                  .contain, // Use BoxFit.contain to fit the image within the container
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // Second container
                    color:
                        Colors.transparent, // Change color or add your content
                    height: 600, // Set the height as per your requirement
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Sponsor of your favourite teams",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Whats11.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats12.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats13.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats14.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats15.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats16.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats17.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/Whats18.jpg',
                                  width: 100,
                                  height: 400,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Other container properties and widgets go here
                  ),
                  // Container(
                  //   // Second container
                  //   color: Colors.yellow, // Change color or add your content
                  //   height: 900, // Set the height as per your requirement
                  //   // Other container properties and widgets go here
                  // ),
                  Container(
                    color:
                        Colors.black, // Background color of the main container
                    height: 750, // Set the height as per your requirement

                    child: Row(
                      children: [
                        Container(
                          color: Colors
                              .transparent, // Color of the outer container
                          width:
                              330, // Set the width as per your requirement for the outer container
                          // Other outer container properties and widgets go here
                          child: Column(
                            children: [
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 150,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'AutoX Global Trade',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 3.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            8), // Add some space between title and subtitle
                                    Text(
                                      'Look First Then Leap.',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 3.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors
                                    .transparent, // Color of the second container
                                width:
                                    310, // Set the width as per your requirement for the second container
                                height:
                                    150, // Set the height of the second container
                                // Properties and widgets of the second container go here
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: 330,
                                      height: 60,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/twitter.svg', // Replace with the path to your Twitter SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                            'assets/facebook.svg', // Replace with the path to your Facebook SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                            'assets/youtube.svg', // Replace with the path to your YouTube SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                            'assets/instagram.svg', // Replace with the path to your Instagram SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.transparent,
                                      width: 330,
                                      height: 60,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/tiktok.svg', // Replace with the path to your Twitter SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                            'assets/telegram.svg', // Replace with the path to your Facebook SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                            'assets/linkedin.svg', // Replace with the path to your YouTube SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                          SvgPicture.asset(
                                            'assets/whatsapp.svg', // Replace with the path to your Instagram SVG file
                                            color: Colors.white,
                                            height: 30,
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors
                              .transparent, // Color of the second container
                          width: 315, // Set the width as per your requirement
                          // Other container properties and widgets go here
                          child: Column(
                            children: [
                              const SizedBox(height: 9),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 60,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10,
                                      bottom:
                                          10), // Adjust the values as needed
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Products',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 3.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 600,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen5
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const StockPage(), // Replace Test with the actual page you want to navigate to
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Stock and Forex'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen6
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CryptoPage(), // Replace Test with the actual page you want to navigate to
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Cryptocurrencies'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen7
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Gold mining'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen8
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Loan'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen9
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Real estate'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen10
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('NFP'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors
                              .transparent, // Color of the second container
                          width: 315, // Set the width as per your requirement
                          // Other container properties and widgets go here
                          child: Column(
                            children: [
                              const SizedBox(height: 9),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 60,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10,
                                      bottom:
                                          10), // Adjust the values as needed
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Company',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 3.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 600,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen1
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ThirdContainer(),
                                          ),
                                        );
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('About Us'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen2
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Legal fills'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen3
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Imprint'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen4
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('PDF'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen5
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('FAQ'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors
                              .transparent, // Color of the second container
                          width: 315, // Set the width as per your requirement
                          // Other container properties and widgets go here
                          child: Column(
                            children: [
                              const SizedBox(height: 9),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 60,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10,
                                      bottom:
                                          10), // Adjust the values as needed
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pricing',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 3.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 600,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen1
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Basic plan'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen2
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Defi plan'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors
                              .transparent, // Color of the second container
                          width: 315, // Set the width as per your requirement
                          // Other container properties and widgets go here
                          child: Column(
                            children: [
                              const SizedBox(height: 9),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 60,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10,
                                      bottom:
                                          10), // Adjust the values as needed
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Contact Us',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black,
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 3.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.transparent,
                                width: 330,
                                height: 600,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen1
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Call'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen2
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('WhatsApp'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Screen3
                                      },
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        textStyle: const TextStyle(
                                            fontWeight:
                                                FontWeight.bold), // Bold text
                                      ),
                                      child: const Text('Support'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
