//import 'package:autox_global_trade/Top%20Container/stock.dart';
//import 'package:autox_global_trade/Top%20Container/stockT.dart';
//import 'package:autox_global_trade/Top%20Container/third_container.dart';
//import 'package:autox_global_trade/Top%20Container/third_containerT.dart';
import 'package:autox_global_trade/Top%20Container/stockM.dart';
import 'package:autox_global_trade/Top%20Container/third_containerM.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoPageM extends StatelessWidget {
  const CryptoPageM({Key? key}) : super(key: key);

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
                                  "Crypto Investment",
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
              height: 1100,
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
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Individual coin ownership records are stored in a digital ledger, which is a computerized database using strong cryptography to secure transaction records, control the creation of additional coins, and verify the transfer of coin ownership. Despite their name, cryptocurrencies are not considered to be currencies in the traditional sense, and while varying treatments have been applied to them, including classification as commodities, securities, and currencies, cryptocurrencies are generally viewed as a distinct asset class in practice.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Some crypto schemes use validators to maintain the cryptocurrency. In a proof-of-stake model, owners put up their tokens as collateral. In return, they get authority over the token in proportion to the amount they stake.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Generally, these token stakers get additional ownership in the token over time via network fees, newly minted tokens, or other such reward mechanisms.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "One of the most common forms of digital currency is the Bitcoin which was released in 2009. Its initial price was set at less than 1 cent as at 2010. While it is still to experience its boom phase, it has quickly become a popular way of trading for many. One of the big benefits of this form of trading is the money that there is to be made. The bitcoin, for example, hit a market cap of \$160 billion by November, 2017. There are considerably a few people trading cryptocurrencies which is an advantage because the market is yet to be saturated by others trying to get in on the game.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Deutsche bank has shown an increasing appreciation for the transformative potential of both blockchain technology—becoming one of the first to spearhead the development of its own Ethereum-based blockchain—and the cryptocurrencies based on it.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Just like Deutsche bank, Germany offers forex broker service, we also have cryptocurrency traders that specialize in the trading of this digital cash. Our job is to test them all out, put them through their paces and then present our information, for better results.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
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
