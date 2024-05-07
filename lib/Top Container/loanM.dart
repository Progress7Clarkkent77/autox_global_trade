//import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
//import 'package:autox_global_trade/Top%20Container/crypto_pageT.dart';
//import 'package:autox_global_trade/Top%20Container/stock.dart';
//import 'package:autox_global_trade/Top%20Container/stockT.dart';
//import 'package:autox_global_trade/Top%20Container/third_container.dart';
//import 'package:autox_global_trade/Top%20Container/third_containerT.dart';
import 'package:autox_global_trade/Top%20Container/crypto_pageM.dart';
import 'package:autox_global_trade/Top%20Container/stockM.dart';
import 'package:autox_global_trade/Top%20Container/third_containerM.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoanPageM extends StatelessWidget {
  const LoanPageM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                // 0.5 represents the transparency level (0.0 to 1.0)
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/3.jpg'), // Make sure to adjust the path based on your project structure
                  fit: BoxFit.cover,
                ),
              ),
              // No need to set color when using an image as the background
              // Add child widgets if needed
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
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
                                    fontSize: 25.0,
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
                                SizedBox(height: 25.0),
                                Text(
                                  "Loan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
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
                                SizedBox(height: 25.0),
                                Text(
                                  "Take full control of your financial growth, Make the switch and start investing.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
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
                                "Home",
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
              height: 700,
              color: Colors.black, // You can set any color you prefer
              // Add child widgets if needed
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Loan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Getting a loan doesn’t have to be intimidating, with the right lender it can be a simple process. You only need a lender committed to taking the mystery out of the mortgage loan process!. At Auto Global Trade, we understand! Our investors want simple facts, honest answers and competitive products.",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Multi Globaldive Finx automatically offers loan services to investors with over \$100,000 investment either in our normal Multi Globaldive Finx packages or the NFP plans. Investors over \$100,000 are entitled to loans of \$500,000 - 1millon dollars yearly with 5% paid monthly, or the investor could wish to compound the interest till the time limit, provided all required information and identity of the investor are duly confirmed by the Multi Globaldive Finxs loan board.",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Every investor above \$100,000 is provided with a personal account manager and the investor has a direct communication with the manager in order to see that our loan offers are secured.",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "GREAT INVESTING WITH THE AutoX Global Trade FAMILY!",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 700,
              color: Colors.deepOrange, // You can set any color you prefer
              // Add child widgets if needed
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Securities-Based Loans",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                    SizedBox(height: 35),
                    Text(
                      "Our Securities-based Loan Program, underwritten by Auto Global Trade Securities, offers a convenient way to finance almost any need - while your investments mature. If your account is eligible, a percentage of your existing portfolio (depending on your current investment plan) can be used as collateral to take a completely Interest Free loan to finance a variety of goals and needs. These may include:",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 25),
                    Text(
                      "✅ Short-term cash flow gaps\n✅ Business expenses, including day-to-day or longer-term capital expenditures, or interest in a business partnership\n✅ Education expenses and other memorable life events\n✅ Real estate and luxury purchases\n✅ Liquidity for estate planning\n✅ Tax planning\n✅ Refinancing high-interest-rate debt or credit cards",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      //textAlign: TextAlign.justify,
                    ),
                    // SizedBox(height: 10),
                    // Text(
                    //   "Every investor above \$100,000 is provided with a personal account manager and the investor has a direct communication with the manager in order to see that our loan offers are secured.",
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 20,
                    //     color: Colors.white,
                    //   ),
                    //   textAlign: TextAlign.justify,
                    // ),
                    // SizedBox(height: 10),
                    // Text(
                    //   "GREAT INVESTING WITH THE AutoX Global Trade FAMILY!",
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 20,
                    //     color: Colors.white,
                    //   ),
                    //   textAlign: TextAlign.justify,
                    // ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 300,
              width: double.infinity,
              //margin: const EdgeInsets.only(top: 5500),
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: 300,
                    height: 120,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AutoX Global Trade',
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
                        SizedBox(
                          height: 8,
                        ), // Add some space between title and subtitle
                        Text(
                          'Look First Then Leap.',
                          style: TextStyle(
                            fontSize: 13,
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
                    color: Colors.transparent,
                    width: 280,
                    // Set the width as per your requirement for the second container
                    height: 150,
                    // Set the height of the second container
                    // Properties and widgets of the second container go here
                    child: Column(
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/twitter.svg',
                                // Replace with the path to your Twitter SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/facebook.svg',
                                // Replace with the path to your Facebook SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/youtube.svg',
                                // Replace with the path to your YouTube SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/instagram.svg',
                                // Replace with the path to your Instagram SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent,
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/tiktok.svg',
                                // Replace with the path to your Twitter SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/telegram.svg',
                                // Replace with the path to your Facebook SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/linkedin.svg',
                                // Replace with the path to your YouTube SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/whatsapp.svg',
                                // Replace with the path to your Instagram SVG file
                                color: Colors.white,
                                height: 20,
                                width: 20,
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
              color: Colors.black,
              width: double.infinity,
              height: 500,
              //margin: const EdgeInsets.only(top: 5800),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: 160,
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '  Products',
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
                          TextButton(
                            onPressed: () {
                              // Navigate to Screen5
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const StockPageM()),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(),
                            ),
                            child: const Text('Stock and Forex'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate to Screen6
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CryptoPageM()),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(),
                            ),
                            child: const Text('Cryptocurrencies'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      color: Colors.transparent,
                      width: 160,
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '  Company',
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
                          TextButton(
                            onPressed: () {
                              // Navigate to Screen1
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ThirdContainerM()),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(),
                            ),
                            child: const Text('About Us'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
