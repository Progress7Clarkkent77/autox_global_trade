//import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
import 'package:autox_global_trade/Top%20Container/crypto_pageT.dart';
//import 'package:autox_global_trade/Top%20Container/stock.dart';
import 'package:autox_global_trade/Top%20Container/stockT.dart';
//import 'package:autox_global_trade/Top%20Container/third_container.dart';
import 'package:autox_global_trade/Top%20Container/third_containerT.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoldMiningPageT extends StatelessWidget {
  const GoldMiningPageT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              decoration: const BoxDecoration(
                // 0.5 represents the transparency level (0.0 to 1.0)
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/2.jpg'), // Make sure to adjust the path based on your project structure
                  fit: BoxFit.cover,
                ),
              ),
              // No need to set color when using an image as the background
              // Add child widgets if needed
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    color: Colors.black.withOpacity(0.8),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "AutoX Global Trade",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 100.0,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "Gold Mining",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  "Take full control of your financial growth, Make the switch and start investing.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
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
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your navigation logic here
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black.withOpacity(0.5),
                              ),
                              child: const Text(
                                "Back Home",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 950,
              color: Colors.white, // You can set any color you prefer
              // Add child widgets if needed
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    // Text(
                    //   "Cryptocurrencies",
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 35,
                    //   ),
                    // ),
                    SizedBox(height: 35),
                    Text(
                      "Gold mining is the extraction of gold by mining. World gold production was 3,612 tons in 2022. Historically, mining gold from alluvial deposits used manual separation processes, such as gold panning. The expansion of gold mining to ores that are not on the surface, has led to more complex extraction processes such as pit mining and gold cyanidation. In the 20th and 21st centuries, most volume of mining was done by large corporations; however, the value of gold has led to millions of small, artisanal miners in many parts of the Global South.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hard rock mining extracts gold encased in rock, rather than fragments in loose sediment, and produces most of the world's gold. Sometimes open-pit mining is used, such as at the Fort Knox Mine in central Alaska. Barrick Gold Corporation has one of the largest open-pit gold mines in North America located on its Goldstrike mine property in north eastern Nevada. Other gold mines use underground mining, where the ore is extracted through tunnels or shafts. South Africa has the world's deepest hard rock gold mine up to 3,900 metres (12,800 ft) underground. At such depths, the heat is unbearable for humans, and air conditioning is required for the safety of the workers. The first such mine to receive air conditioning was Robinson Deep, at that time the deepest mine in the world for any mineral.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Recreational gold mining and prospecting has become a popular outdoor recreation in a number of countries, including New Zealand (especially in Otago), Australia, South Africa, Wales (at Dolaucothi and in Gwynedd), in Canada and in the United States especially. Recreational mining is often small-scale placer mining but has been challenged for environmental reasons. The disruption of old gold placer deposits risks the reintroduction of post gold rush pollution, including mercury in old mining deposits and mine tailings.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Like most commodities, the price of gold is driven by supply and demand, including speculative demand. However, unlike most other commodities, saving and disposal play larger roles in affecting its price than its consumption. Most of the gold ever mined still exists in accessible form, such as bullion and mass-produced jewelry, with little value over its fine weight—so it is nearly as liquid as bullion, and can come back onto the gold market. At the end of 2006, it was estimated that all the gold ever mined totalled 158,000 tonnes (156,000 long tons; 174,000 short tons). Given the huge quantity of gold stored above ground compared to the annual production, the price of gold is mainly affected by changes in sentiment, which affects market supply and demand equally, rather than on changes in annual production. According to the World Gold Council, annual mine production of gold over the last few years has been close to 2,500 tonnes. About 2,000 tonnes goes into jewelry, industrial and dental production, and around 500 tonnes goes to retail investors and exchange-traded gold funds.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black, // Background color of the main container
              height: 750, // Set the height as per your requirement
              //margin: const EdgeInsets.only(top: 6900),
              child: Row(
                children: [
                  Container(
                    color: Colors.transparent, // Color of the outer container
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
                                  fontSize: 20,
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
                                  fontSize: 15,
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
                          height: 150, // Set the height of the second container
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
                    color: Colors.transparent, // Color of the second container
                    width: 250, // Set the width as per your requirement
                    // Other container properties and widgets go here
                    child: Column(
                      children: [
                        const SizedBox(height: 9),
                        Container(
                          color: Colors.transparent,
                          width: 230,
                          height: 60,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10,
                                bottom: 10), // Adjust the values as needed
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Products',
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
                          width: 220,
                          height: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen1
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('News flow'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen2
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Supercharts'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen3
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Pine Script™'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen4
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Stock Screener'),
                              // ),
                              TextButton(
                                onPressed: () {
                                  // Navigate to Screen5
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const StockPageT(), // Replace Test with the actual page you want to navigate to
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold), // Bold text
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
                                          const CryptoPageT(), // Replace Test with the actual page you want to navigate to
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold), // Bold text
                                ),
                                child: const Text('Cryptocurrencies'),
                              ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen7
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child:
                              //       const Text('Crypto Coins Screener'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen8
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Stock Heatmap'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen9
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Crypto Heatmap'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen10
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('ETF Heatmap'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen11
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Economic Calendar'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen12
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Earnings Calendar'),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent, // Color of the second container
                    width: 250, // Set the width as per your requirement
                    // Other container properties and widgets go here
                    child: Column(
                      children: [
                        const SizedBox(height: 9),
                        Container(
                          color: Colors.transparent,
                          width: 230,
                          height: 60,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10,
                                bottom: 10), // Adjust the values as needed
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Company',
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
                          width: 220,
                          height: 500,
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
                                          const ThirdContainerT(),
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold), // Bold text
                                ),
                                child: const Text('About Us'),
                              ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen2
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Features'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen3
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Pricing'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen4
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Wall of Love'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen5
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Athletes'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen6
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Manifesto'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen7
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Careers'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen8
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Blog'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen9
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child:
                              //       const Text('Security vulnerability'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen10
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Status page'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen11
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Terms of use'),
                              // ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Navigate to Screen12
                              //   },
                              //   style: TextButton.styleFrom(
                              //     primary: Colors.white, // Text color
                              //     textStyle: const TextStyle(
                              //         fontWeight:
                              //             FontWeight.bold), // Bold text
                              //   ),
                              //   child: const Text('Disclaimer'),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   color: Colors.transparent, // Color of the second container
                  //   width: 315, // Set the width as per your requirement
                  //   // Other container properties and widgets go here
                  //   child: Column(
                  //     children: [
                  //       const SizedBox(height: 9),
                  //       Container(
                  //         color: Colors.transparent,
                  //         width: 330,
                  //         height: 60,
                  //         child: Container(
                  //           padding: const EdgeInsets.only(
                  //               left: 10,
                  //               bottom: 10), // Adjust the values as needed
                  //           child: const Column(
                  //             mainAxisAlignment: MainAxisAlignment.end,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               // Text(
                  //               //   'Community',
                  //               //   style: TextStyle(
                  //               //     fontSize: 18,
                  //               //     fontWeight: FontWeight.bold,
                  //               //     color: Colors.white,
                  //               //     shadows: [
                  //               //       Shadow(
                  //               //         color: Colors.black,
                  //               //         offset: Offset(2.0, 2.0),
                  //               //         blurRadius: 3.0,
                  //               //       ),
                  //               //     ],
                  //               //   ),
                  //               // ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         color: Colors.transparent,
                  //         width: 330,
                  //         height: 600,
                  //         child: const Column(
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen1
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Refer a friend'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen2
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Ideas'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen3
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Scripts'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen4
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Streams'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen5
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('House rules'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen6
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Moderators'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen7
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Pine Script™ Wizards'),
                  //             // ),
                  //             // TextButton(
                  //             //   onPressed: () {
                  //             //     // Navigate to Screen8
                  //             //   },
                  //             //   style: TextButton.styleFrom(
                  //             //     primary: Colors.white, // Text color
                  //             //     textStyle: const TextStyle(
                  //             //         fontWeight:
                  //             //             FontWeight.bold), // Bold text
                  //             //   ),
                  //             //   child: const Text('Chat'),
                  //             // ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   color: Colors.transparent, // Color of the second container
                  //   width: 315, // Set the width as per your requirement
                  //   // Other container properties and widgets go here
                  //   child: Column(
                  //     children: [
                  //       const SizedBox(height: 9),
                  //       Container(
                  //         color: Colors.transparent,
                  //         width: 330,
                  //         height: 60,
                  //         child: Container(
                  //           padding: const EdgeInsets.only(
                  //               left: 10,
                  //               bottom: 10), // Adjust the values as needed
                  //           child: const Column(
                  //             mainAxisAlignment: MainAxisAlignment.end,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               // Text(
                  //               //   'For Business',
                  //               //   style: TextStyle(
                  //               //     fontSize: 18,
                  //               //     fontWeight: FontWeight.bold,
                  //               //     color: Colors.white,
                  //               //     shadows: [
                  //               //       Shadow(
                  //               //         color: Colors.black,
                  //               //         offset: Offset(2.0, 2.0),
                  //               //         blurRadius: 3.0,
                  //               //       ),
                  //               //     ],
                  //               //   ),
                  //               // ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  // Container(
                  //   color: Colors.transparent,
                  //   width: 330,
                  //   height: 600,
                  //   child: const Column(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen1
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child: const Text('Widgets'),
                  //       // ),
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen2
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child: const Text('Advertising'),
                  //       // ),
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen3
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child: const Text('Charting libraries'),
                  //       // ),
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen4
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child: const Text('Lightweight Charts™'),
                  //       // ),
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen5
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child: const Text('Advanced Charts'),
                  //       // ),
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen6
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child:
                  //       //       const Text('Brokerage integration'),
                  //       // ),
                  //       // TextButton(
                  //       //   onPressed: () {
                  //       //     // Navigate to Screen7
                  //       //   },
                  //       //   style: TextButton.styleFrom(
                  //       //     primary: Colors.white, // Text color
                  //       //     textStyle: const TextStyle(
                  //       //         fontWeight:
                  //       //             FontWeight.bold), // Bold text
                  //       //   ),
                  //       //   child: const Text('Partner program'),
                  //       // ),
                  //     ],
                  //   ),
                  // ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
