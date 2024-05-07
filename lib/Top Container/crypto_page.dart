import 'package:autox_global_trade/Top%20Container/stock.dart';
import 'package:autox_global_trade/Top%20Container/third_container.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({Key? key}) : super(key: key);

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
                      'assets/images/cryptocurrencies.jpg'), // Make sure to adjust the path based on your project structure
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
                                  "Crypto Investment",
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
              height: 700,
              color: Colors.white, // You can set any color you prefer
              // Add child widgets if needed
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Cryptocurrencies",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Individual coin ownership records are stored in a digital ledger, which is a computerized database using strong cryptography to secure transaction records, control the creation of additional coins, and verify the transfer of coin ownership. Despite their name, cryptocurrencies are not considered to be currencies in the traditional sense, and while varying treatments have been applied to them, including classification as commodities, securities, and currencies, cryptocurrencies are generally viewed as a distinct asset class in practice.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Some crypto schemes use validators to maintain the cryptocurrency. In a proof-of-stake model, owners put up their tokens as collateral. In return, they get authority over the token in proportion to the amount they stake.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Generally, these token stakers get additional ownership in the token over time via network fees, newly minted tokens, or other such reward mechanisms.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "One of the most common forms of digital currency is the Bitcoin which was released in 2009. Its initial price was set at less than 1 cent as at 2010. While it is still to experience its boom phase, it has quickly become a popular way of trading for many. One of the big benefits of this form of trading is the money that there is to be made. The bitcoin, for example, hit a market cap of \$160 billion by November, 2017. There are considerably a few people trading cryptocurrencies which is an advantage because the market is yet to be saturated by others trying to get in on the game.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Deutsche bank has shown an increasing appreciation for the transformative potential of both blockchain technology—becoming one of the first to spearhead the development of its own Ethereum-based blockchain—and the cryptocurrencies based on it.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Just like Deutsche bank, Germany offers forex broker service, we also have cryptocurrency traders that specialize in the trading of this digital cash. Our job is to test them all out, put them through their paces and then present our information, for better results.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
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
                                bottom: 10), // Adjust the values as needed
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          const StockPage(), // Replace Test with the actual page you want to navigate to
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
                                          const CryptoPage(), // Replace Test with the actual page you want to navigate to
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
                                bottom: 10), // Adjust the values as needed
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(
                    color: Colors.transparent, // Color of the second container
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
                                bottom: 10), // Adjust the values as needed
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   'Community',
                                //   style: TextStyle(
                                //     fontSize: 18,
                                //     fontWeight: FontWeight.bold,
                                //     color: Colors.white,
                                //     shadows: [
                                //       Shadow(
                                //         color: Colors.black,
                                //         offset: Offset(2.0, 2.0),
                                //         blurRadius: 3.0,
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 330,
                          height: 600,
                          child: const Column(
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
                              //   child: const Text('Refer a friend'),
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
                              //   child: const Text('Ideas'),
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
                              //   child: const Text('Scripts'),
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
                              //   child: const Text('Streams'),
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
                              //   child: const Text('House rules'),
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
                              //   child: const Text('Moderators'),
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
                              //   child: const Text('Pine Script™ Wizards'),
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
                              //   child: const Text('Chat'),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent, // Color of the second container
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
                                bottom: 10), // Adjust the values as needed
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   'For Business',
                                //   style: TextStyle(
                                //     fontSize: 18,
                                //     fontWeight: FontWeight.bold,
                                //     color: Colors.white,
                                //     shadows: [
                                //       Shadow(
                                //         color: Colors.black,
                                //         offset: Offset(2.0, 2.0),
                                //         blurRadius: 3.0,
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 330,
                          height: 600,
                          child: const Column(
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
                              //   child: const Text('Widgets'),
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
                              //   child: const Text('Advertising'),
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
                              //   child: const Text('Charting libraries'),
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
                              //   child: const Text('Lightweight Charts™'),
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
                              //   child: const Text('Advanced Charts'),
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
                              //   child:
                              //       const Text('Brokerage integration'),
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
                              //   child: const Text('Partner program'),
                              // ),
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
      ),
    );
  }
}
