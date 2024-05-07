//import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
import 'package:autox_global_trade/Top%20Container/crypto_pageT.dart';
//import 'package:autox_global_trade/Top%20Container/stock.dart';
import 'package:autox_global_trade/Top%20Container/stockT.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdContainerT extends StatelessWidget {
  const ThirdContainerT({Key? key}) : super(key: key);

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
                      'assets/images/8.jpg'), // Make sure to adjust the path based on your project structure
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
                                  "Leading Financial\nInvestment Company",
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
                                  color: Colors.deepOrange,
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
              height: 900,
              color: Colors.black,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Adjusted to center
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Know us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "About AutoX Global Trade",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 75),
                    Text(
                      "We are a leading global investment solutions partner, dedicated to improving people's financial security through the world of socially responsible investments.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "AutoX Global Trade Established in 2009 as an asset management firm, Auto Global Trade offers wealth creation opportunities through a unique blend of traditional asset management and alternative investment services. We enable businesses to thrive, and help our clients to maximize their returns and realize their most important goals. For over two decades, we have built a firm uniquely equipped to achieve these objectives and our reputation for quality research, investment expertise and value-added services has endeared us to clients both locally and internationally.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Throughout our history, we have strategically positioned ourselves to take advantage of growth opportunities within America, Europe, Asia, and major international markets on behalf of our clients. Our disciplined and consistent approach to investment management has helped us not only to maintain long-term relationships with our clients but also to continue to attract and retain good people.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "At Auto Global Trade, our people are our most valued asset. The quality of our people is the cornerstone of our ability to serve our clients. For this reason, we invest significantly in identifying exceptional people, developing their skills, and creating an environment that fosters their growth as leaders. We encourage entrepreneurship and innovation at all levels because we believe they are key to developing good quality and committed professionals.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.deepOrange,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "What we do",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "We started by providing smart, simple investing, without the high fees and account minimums associated with traditional investment management. We invest your money in a globally diversified portfolio of low-cost index funds, and our cutting-edge technology helps you earn the best possible return, while optimizing your tax bill. This means we do things like automatic rebalanced, dividend reinvesting, and tax loss harvesting — services that were only available to the ultra rich until now or that most people found too time-consuming and tedious to do on their own.",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Investing is just one part of your financial picture. So, we've introduced more ways to reach your goals and manage your money. High-interest savings. Commission-free trading. And features — like automatically investing your spare change — that make it easier to save for your future. That's because we believe that everyone should have access to the tools they need to make smart financial choices.",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black, // Background color of the main container
              height: 750, // Set the height as per your requirement

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
