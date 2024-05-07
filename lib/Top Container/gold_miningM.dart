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

class GoldMiningPageM extends StatelessWidget {
  const GoldMiningPageM({Key? key}) : super(key: key);

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
                                  "Gold Mining",
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
              height: 1300,
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
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hard rock mining extracts gold encased in rock, rather than fragments in loose sediment, and produces most of the world's gold. Sometimes open-pit mining is used, such as at the Fort Knox Mine in central Alaska. Barrick Gold Corporation has one of the largest open-pit gold mines in North America located on its Goldstrike mine property in north eastern Nevada. Other gold mines use underground mining, where the ore is extracted through tunnels or shafts. South Africa has the world's deepest hard rock gold mine up to 3,900 metres (12,800 ft) underground. At such depths, the heat is unbearable for humans, and air conditioning is required for the safety of the workers. The first such mine to receive air conditioning was Robinson Deep, at that time the deepest mine in the world for any mineral.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Recreational gold mining and prospecting has become a popular outdoor recreation in a number of countries, including New Zealand (especially in Otago), Australia, South Africa, Wales (at Dolaucothi and in Gwynedd), in Canada and in the United States especially. Recreational mining is often small-scale placer mining but has been challenged for environmental reasons. The disruption of old gold placer deposits risks the reintroduction of post gold rush pollution, including mercury in old mining deposits and mine tailings.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Like most commodities, the price of gold is driven by supply and demand, including speculative demand. However, unlike most other commodities, saving and disposal play larger roles in affecting its price than its consumption. Most of the gold ever mined still exists in accessible form, such as bullion and mass-produced jewelry, with little value over its fine weight—so it is nearly as liquid as bullion, and can come back onto the gold market. At the end of 2006, it was estimated that all the gold ever mined totalled 158,000 tonnes (156,000 long tons; 174,000 short tons). Given the huge quantity of gold stored above ground compared to the annual production, the price of gold is mainly affected by changes in sentiment, which affects market supply and demand equally, rather than on changes in annual production. According to the World Gold Council, annual mine production of gold over the last few years has been close to 2,500 tonnes. About 2,000 tonnes goes into jewelry, industrial and dental production, and around 500 tonnes goes to retail investors and exchange-traded gold funds.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
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
