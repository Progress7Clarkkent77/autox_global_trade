import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
import 'package:autox_global_trade/Top%20Container/stock.dart';
import 'package:autox_global_trade/Top%20Container/third_container.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RealEstatePage extends StatelessWidget {
  const RealEstatePage({Key? key}) : super(key: key);

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
                      'assets/images/4.jpg'), // Make sure to adjust the path based on your project structure
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
                                  "Real Estate Investment",
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
              height: 850,
              color: Colors.white, // You can set any color you prefer
              // Add child widgets if needed
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Invest to get Unlimited Access to Our\nSecurities-Based Loans",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Real estate encompasses the land, plus any permanent man-made additions, such as houses and other buildings. Any additions or changes to the land that affects the property's value are called an improvement. Once land is improved, the total capital and labor used to build the improvement represent a sizable fixed investment. Though a building can be razed, improvements like drainage, electricity, water and sewer systems tend to be permanent. Real property includes the land and additions to the land plus the rights inherent to its ownership and usage. Investors and analysts keep a close eye on housing starts because the numbers can provide a general sense of economic direction. Moreover, the types of new housing starts can give clues about how the economy is developing. If housing starts indicate fewer single-family and more multifamily starts, it could signal an impending supply shortage for single-family homes, driving up home prices. As members of CATEF / SVIT we offer a complete service in real estate administration and brokerage. Our management services are directed to individual property owners, condominiums, real estate companies and commercial investors, with the aim of actively contributing to the appreciation of their real estate. Our brokerage activities are based on our expertise in the sale and purchase of flats and buildings, as well as in first-time lets. Thanks to regular training and further education, we are experts in the financial and technical management of real estate. Our Securities-based Loan Program, underwritten by Forex chasers broker Securities, offers a convenient way to finance almost any need - while your investments mature. If your account is eligible, a percentage of your existing portfolio (depending on your current investment plan) can be used as collateral to take a completely Interest Free loan to finance a variety of goals and needs. These may include:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "✅ Short-term cash flow gaps\n✅ Business expenses, including day-to-day or longer-term capital expenditures, or interest in a business partnership\n✅ Education expenses and other memorable life events\n✅ Real estate and luxury purchases\n✅ Liquidity for estate planning\n✅ Tax planning\n✅ Refinancing high-interest-rate debt or credit cards",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    // Text(
                    //   "For those who know what they are doing, Forex trading can be very profitable activity although it doesn't come without risks. To get the best out of your trading experience. It is critical that you choose a Forex platform/broker that can offer you everything you need from demo platforms to educational tools.",
                    //   style: TextStyle(
                    //     //fontWeight: FontWeight.bold,
                    //     fontSize: 20,
                    //     color: Colors.white,
                    //     shadows: [
                    //       Shadow(
                    //         color: Colors.black,
                    //         offset: Offset(2.0, 2.0),
                    //         blurRadius: 3.0,
                    //       ),
                    //     ],
                    //   ),
                    //   textAlign: TextAlign.justify,
                    // ),
                    // SizedBox(height: 10),
                    // Text(
                    //   "Selecting the right broker can be a time-consuming process. Who do you choose and why? What do you look out for and how do you know that the company/broker is safe? That is where we come in. Our team of experts scour the internet reviewing and rating all of the markets, so that we only present you with the best of them. It is then up to you to make an informed decision as to how much to invest.",
                    //   style: TextStyle(
                    //     //fontWeight: FontWeight.bold,
                    //     fontSize: 20,
                    //     color: Colors.white,
                    //     shadows: [
                    //       Shadow(
                    //         color: Colors.black,
                    //         offset: Offset(2.0, 2.0),
                    //         blurRadius: 3.0,
                    //       ),
                    //     ],
                    //   ),
                    //   textAlign: TextAlign.justify,
                    // ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: 600,
            //   color: Colors.deepOrange, // You can set any color you prefer
            //   child: const Padding(
            //     padding: EdgeInsets.all(20.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(height: 20),
            //         Text(
            //           "Leadership Incentives (BLV)\nCompensation Plan",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 45,
            //             color: Colors.black,
            //           ),
            //         ),
            //         SizedBox(height: 35),
            //         Text(
            //           "Our leadership incentive program is a 15 referral levels unilevel referral program uniquely designed to reward Expertdreamtrade Members best performing affiliates. Any person can join the top ranking leaders by taking the advantage of the network marketing opportunities, by sponsoring potential marketers and investors to boost your BLV in order to qualify for monthly leadership bonus earnings. IMPORTANT: All leadership earnings are credited in the account on the 1st day of each month. GET STARTED Leadership Earnings Governor:- The leadership bonus ranges between \$500 USD - \$2000 USD for 1 year depending on the BLV. Vice-President:- The leadership bonus ranges between \$4,000 USD - \$10,000 USD for 1 year depending on the BLV. President:- The leadership bonus ranges between \$15,000 USD - \$60,000 USD for 1 year depending on the BLV. A NonFarm Payrolls Forecast is some sentiment-based piece of content that tries to predict what the NFP numbers will be and what impact will they have on the markets. In this page, you'll find some articles and tools that will help you to understand which could be the outlook for ADP Report, Unemployment Rate, Average Hourly Earnings, Labor Force Participation Rate and some other important economic indicators. The ADP (National Employment Report) is an estimation of nonfarm employment which is based on a survey of thousands of private sector businesses. One of the biggest differences between NFP data and ADP data is the sample and methodology of the study. ADP Jobs Report could show us an anticipation of the NFP's trends. Some outlooks are mainly based on the Jobs Report, in past data and in other related job indicators like Initial/Continuing Jobless Claims.",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //             color: Colors.black,
            //           ),
            //           textAlign: TextAlign.justify,
            //         ),
            //         // SizedBox(height: 25),
            //         // Text(
            //         //   "✅ Short-term cash flow gaps\n✅ Business expenses, including day-to-day or longer-term capital expenditures, or interest in a business partnership\n✅ Education expenses and other memorable life events\n✅ Real estate and luxury purchases\n✅ Liquidity for estate planning\n✅ Tax planning\n✅ Refinancing high-interest-rate debt or credit cards",
            //         //   style: TextStyle(
            //         //     fontWeight: FontWeight.bold,
            //         //     fontSize: 20,
            //         //     color: Colors.white,
            //         //     shadows: [
            //         //       Shadow(
            //         //         color: Colors.black,
            //         //         offset: Offset(2.0, 2.0),
            //         //         blurRadius: 3.0,
            //         //       ),
            //         //     ],
            //         //   ),
            //         //   textAlign: TextAlign.justify,
            //         // ),
            //         // SizedBox(height: 10),
            //         // Text(
            //         //   "Every investor above \$100,000 is provided with a personal account manager and the investor has a direct communication with the manager in order to see that our loan offers are secured.",
            //         //   style: TextStyle(
            //         //     fontWeight: FontWeight.bold,
            //         //     fontSize: 20,
            //         //     color: Colors.white,
            //         //   ),
            //         //   textAlign: TextAlign.justify,
            //         // ),
            //         // SizedBox(height: 10),
            //         // Text(
            //         //   "GREAT INVESTING WITH THE AutoX Global Trade FAMILY!",
            //         //   style: TextStyle(
            //         //     fontWeight: FontWeight.bold,
            //         //     fontSize: 20,
            //         //     color: Colors.white,
            //         //   ),
            //         //   textAlign: TextAlign.justify,
            //         // ),
            //         SizedBox(height: 10),
            //       ],
            //     ),
            //   ),
            // ),
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
