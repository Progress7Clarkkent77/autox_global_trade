//import 'package:autox_global_trade/Top%20Container/animation_text.dart';
import 'package:autox_global_trade/Authentication/dialog_auth.dart';
import 'package:autox_global_trade/Top%20Container/animation_text1.dart';
import 'package:autox_global_trade/Top%20Container/button1.dart';
import 'package:autox_global_trade/Top%20Container/crypto_pageM.dart';
import 'package:autox_global_trade/Top%20Container/crypto_price.dart';
import 'package:autox_global_trade/Top%20Container/gold_miningM.dart';
import 'package:autox_global_trade/Top%20Container/loanM.dart';
import 'package:autox_global_trade/Top%20Container/non_farmM.dart';
import 'package:autox_global_trade/Top%20Container/real_estateM.dart';
//import 'package:autox_global_trade/Top%20Container/custom_dialog.dart';
import 'package:autox_global_trade/Top%20Container/search.dart';
import 'package:autox_global_trade/Top%20Container/stockM.dart';
import 'package:autox_global_trade/Top%20Container/third_containerM.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:autox_global_trade/Top%20Container/your_w1.dart';
//import 'package:autox_global_trade/home/test.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // First Container with Background Image and AppBar
          Container(
            height: 700,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Your content for mobile layout
                Container(
                  height: 80,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        // child: IconButton(
                        //   icon: const Icon(Icons.menu, color: Colors.white),
                        //   onPressed: () {
                        //     showDialog(
                        //       context: context,
                        //       builder: (BuildContext context) {
                        //         return const CustomDialog();
                        //       },
                        //     );
                        //   },
                        // ),
                      ),
                      const Text(
                        'AutoX Global Trade',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: ClipPath(
                          clipper: ParallelogramClipper(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,

                                /// for call and show AuthDialog widget when click
                                builder: (context) => const AuthDialog(),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 2.0,
                              padding: EdgeInsets.zero,
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.green,
                                    Colors.orange,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: const Text(
                                  'Explore',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      'Look First /\nThen Leap.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
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
                ),
                Container(
                  height: 100,
                  color: Colors.transparent,
                  child: FadingTextStyleAnimation(),
                ),
                Container(
                  height: 50, // Adjust the height as needed
                  color: Colors.transparent,
                  child: const SearchBarWidget(),
                ),
                const SizedBox(height: 8),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    height: 100,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle the click event for the first black container here
                                print('BTCUSD container clicked!');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Container(
                                  width: 120,
                                  height: 50,
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
                                        width: 20,
                                        height: 20,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          child: Image.asset(
                                            'assets/1.jpeg',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          BTCPriceWidget2(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                                width: 10), // Adjust spacing as needed
                            GestureDetector(
                              onTap: () {
                                // Handle the click event for the second black container here
                                print('ETHUSD container clicked!');
                              },
                              child: Container(
                                width: 120,
                                height: 50,
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
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        child: Image.asset(
                                          'assets/2.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ETHPriceWidget2(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Second Container
          Container(
            height: 700,
            margin: const EdgeInsets.only(top: 700),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  //Colors.lightGreenAccent,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Elevate your financial approach to a \nsymphony of success, where \ncutting-edge automation orchestrates \nthat world of market',
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
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
                  SizedBox(
                    height: 20, // Adjust the height as needed
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Button click action
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.black.withOpacity(
                  //         0.5), // Adjust the alpha value for transparency
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(
                  //           10.0), // Adjust the radius as needed
                  //     ),
                  //     fixedSize: const Size(
                  //         180, 40), // Set the height and width of the button
                  //   ),
                  //   child: const Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Text(
                  //         'Read more',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //       Icon(
                  //         Icons.keyboard_arrow_down,
                  //         color: Colors.white,
                  //       ), // Use keyboard arrow down icon
                  //     ],
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 30, // Adjust the size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.attach_money,
                        size: 30, // Adjust the size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.attach_money,
                        size: 30, // Adjust the size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10, // Adjust the height as needed
                  ),
                  Text(
                    'Take full control of your financial growth, \nMake the switch and start investing with us.',
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 16,
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
                ],
              ),
            ),
            // Other container properties and widgets go here
          ),

          // Third Container
          Container(
            height: 700,
            margin: const EdgeInsets.only(top: 1400),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.blueGrey, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      'Who we are?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  // Additional container beneath the second container
                  width: double.infinity,
                  height: 60, // Set the height as per your requirement
                  color: Colors.transparent, // Change color or add your content
                  child: const Center(
                    child: Text(
                      'Bridging the Gap Between Technology and Investment',
                      style: TextStyle(
                        color: Colors.white,
                        //fontWeight: FontWeight.bold,
                        fontSize: 22,
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
                  // Other container properties and widgets go here
                ),
                const SizedBox(height: 5),
                Container(
                  // Additional container beneath the second container
                  width: double.infinity,
                  height: 90, // Set the height as per your requirement
                  color: Colors.transparent, // Change color or add your content
                  child: const Center(
                    child: Text(
                      'At AutoX Global Trade, we are more than just a trading platform. We are a team of dedicated finance and technology professionals committed to making sophisticated investment strategies accessible to everyone. Our mission is to empower and excite both first-time investors and seasoned traders alike.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
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
                  // Other container properties and widgets go here
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(width: 30),
                        _buildInfoContainer(
                            Icons.monetization_on,
                            'Pioneers in Automated Trading',
                            'Built upon robust algorithms and advanced artificial intelligence, our platform streamlines the complexities of trading. We have designed a system that works seamlessly to automate trading activities, so you can focus more on your investment goals and less on the logistical details.'),
                        const SizedBox(width: 30),
                        _buildInfoContainer(
                            Icons.monetization_on_outlined,
                            'Breaking Barriers in investment',
                            'Automated investing, we have cultivated a platform hat breaks down the barriers to entry for all. No matter the size of your portflio or level or expertise, we the potential of stocks and cryptocurrencies and beyond.'),
                        const SizedBox(width: 30),
                        _buildInfoContainer(
                            Icons.design_services,
                            'User-Centric by Design',
                            'Our platform is built with user at the for forfront. Just like the most intuitive financial platforms, we prioritize a seamless user interface and a hassle-free user experience. we guide and support our users every step of the way to ensure they are making informed investment decisions.'),
                        const SizedBox(width: 30),
                        _buildInfoContainer(
                            Icons.inventory_sharp,
                            'Commited to Innovation and Integrity',
                            'As part of our commitment to offering a truly exceptional platform, we continually innovate, evolve and adapt. Our operations and offerings are always transparent and in strict accordance with regulatory standards, ensuring you can trust us to keep your investments secure.'),
                        //Its note-worthy, though, to tailor this template according to your actual practices and principles, making it true to your brand.'),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2, // Adjust the height as needed
                ),
                ElevatedButton(
                  onPressed: () {
                    // Button click action
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdContainerM()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(
                        0.5), // Adjust the alpha value for transparency
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    fixedSize: const Size(
                        180, 40), // Set the height and width of the button
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Read more',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.keyboard_arrow_down,
                          color: Colors.white), // Use keyboard arrow down icon
                    ],
                  ),
                ),
                const SizedBox(
                  height: 38, // Adjust the height as needed
                ),
                Stack(
                  children: [
                    Container(
                      // Your existing container with the image
                      width: double.infinity,
                      height: 120,
                      color: Colors.transparent,
                      child: const Image(
                        image: AssetImage('assets/14.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // New container on top with the same height and blue color
                      width: double.infinity,
                      height: 120,
                      color: Colors.transparent,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              'Stop leaving money on the table.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
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
                          ),
                          Center(
                            child: Text(
                              'Start investing with Multi AutoX Global Trade, Get access to wealth creation that was previously reserved for the top 1% of people.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
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
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            // Other container properties and widgets go here
          ),

          // Fourth Container
          Container(
            height: 700,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 2100),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      color: Colors.transparent,
                      height: 215,
                      width: double.infinity,
                      padding: const EdgeInsets.all(30),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Our Investments',
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
                          SizedBox(height: 13),
                          Center(
                            child: Text(
                              'We give you the option to switch \ninvestments as your financial \ncircumstances change. You can \nchange how you invest to suit your \nneeds without additional costs!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey,
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 0.3,
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
                  Container(
                    height: 240,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              height: 230,
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
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Crypto Currency',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
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
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Crypto trading is the buying and selling of crypto or digital assets, such as cryptocurrencies, tokens and NFTs (non-fungible tokens). Forex trading means swapping one fiat currency for another in the hope the currency will rise in value.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CryptoPageM(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "SEE MORE",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 230,
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
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Gold Mining',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
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
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Gold is commonly seen as a great store of wealth, this precious metal is also known as a reliable safe-haven asset. With a rich history amongst almost all global cultures, gold remains a highly popular investment with multiple uses.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const GoldMiningPageM(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "SEE MORE",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 230,
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
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Loan',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
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
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Getting a loan doesn\'t have to be intimidating, with the right lender it can be a simple process. You only need a lender committed to ...',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoanPageM(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "SEE MORE",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 240,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              height: 230,
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
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Stocks',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
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
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Invest in commodity-related stocks. Buying stocks to related to certain commodities is a way to bet on the value of a commodity without incurring all of the risk of futures trading.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const StockPageM(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "SEE MORE",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 230,
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
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'non-farm payroll (NFP)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
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
                                    const SizedBox(height: 10),
                                    const Text(
                                      'The non-farm payroll report causes one of the consistently largest rate movements of any news announcement in the forex market. As a result, many analysts,',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NonFarmPageM(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "SEE MORE",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 230,
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
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Real Estate',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
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
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Management of property both owned and funded. We make sure that you get the maximum return on every property funded with your asset.',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 12),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const RealEstatePageM(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "SEE MORE",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Fifth Container
          Container(
            height: 340,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 2800),
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
                              fontSize: 18,
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
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
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
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
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
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
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
            height: 550,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 3100),
            child: Column(
              children: [
                // Child container at the top
                Center(
                  child: Container(
                    color: Colors.transparent,
                    height: 190,
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
                              fontSize: 18,
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
                              fontSize: 14,
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
                  height: 320,
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container 1
                        Container(
                          width: 300,
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
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  'A good financial plan is the blueprint that helps you make decisions holistically and confidently. We can help our clients with budgeting and cash flow analysis, estate and tax planning, and even strategies for maximizing Social Security.\n\nScroll ➡️',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Container 2
                        Container(
                          width: 300,
                          margin: const EdgeInsets.only(right: 10, left: 10),
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
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  'We work now to help you stop working later. Tell us when and where you want to retire, and how much you’ve saved so far. We’ll help give you a sense of where you stand and guide you on the path forward.\n\nScroll ➡️',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Container 3
                        Container(
                          width: 300,
                          margin: const EdgeInsets.only(left: 10),
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
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 700,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 3600),
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
                              fontSize: 23,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container 1
                      Center(
                        child: Container(
                          width: 300,
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
                                      width: 20,
                                      height: 20,
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
                                          size: 20,
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
                                            fontSize: 13.0,
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
                                          'Open an Account for free in just few \nminutes and verify your email.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11.0,
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
                                      width: 20,
                                      height: 20,
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
                                          size: 20,
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
                                            fontSize: 13.0,
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
                                          'Easy and Secure, choose one of the multiple \npayment methods available, make \ndeposit and get funded instantly.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
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
                                      width: 20,
                                      height: 20,
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
                                          size: 20,
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
                                            fontSize: 13.0,
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
                                          'Choose any investment plan that suits your \nfinancial status and start \nearning instantly.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Container 2
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.transparent,
            height: 600,
            margin: const EdgeInsets.only(top: 4100),
            child: const YourWidget1(),
          ),
          Container(
            height: 600,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 4700),
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
                              fontSize: 20,
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
                  height: 500,
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container 1
                      Center(
                        child: Container(
                          width: 300,
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
                                      width: 30,
                                      height: 30,
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
                                          size: 30,
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
                                            fontSize: 13.0,
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
                                          'We protect our investors with the best \nsophisticated online protection measures \nand high-grade SSL encryption',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11.0,
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
                                      width: 30,
                                      height: 30,
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
                                          size: 30,
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
                                            fontSize: 13.0,
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
                                          'In the crypto world speed is everything. \nThat is why we build our platform \nfor maximum speed from human \nresources to A.I integration',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11.0,
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
                                      width: 30,
                                      height: 30,
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
                                          size: 30,
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
                                            fontSize: 13.0,
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
                                          'Our team is always available to respond \nto issues when ever they arise.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11.0,
                                            fontWeight: FontWeight.bold,
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
                      ),

                      // Container 2
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 500,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 5200),
            child: Column(
              children: [
                // Container 1
                Container(
                  height: 70,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 10),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.width >= 768 ? 15 : 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Investing with Impact',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 23.0,
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Container 2
                Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.only(bottom: 10),
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
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.width >= 768 ? 20 : 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '“To us, the necessary capital to have real impact, sustainable investing can’t be limited to investors willing to accept unattractive returns in order to create social good. Getting to scale requires investment products that seek attractive returns while benefiting society. This is the philosophy behind our Investing with Impact strategy."',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
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
            height: 600,
            width: double.infinity,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 5500),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Great",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/review1.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
                const SizedBox(height: 0.9), // Reduced height here
                const Text(
                  "23,036 reviews on Trustpilot",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/twopic.jpeg',
                  width: 1000,
                  height: 400,
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 6000),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sponsor of your",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "favourite teams",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
                        const SizedBox(width: 3),
                        Image.asset(
                          'assets/Whats12.jpg',
                          width: 100,
                          height: 400,
                        ),
                        const SizedBox(width: 3),
                        Image.asset(
                          'assets/Whats13.jpg',
                          width: 100,
                          height: 400,
                        ),
                        const SizedBox(width: 3),
                        Image.asset(
                          'assets/Whats14.jpg',
                          width: 100,
                          height: 400,
                        ),
                        const SizedBox(width: 3),
                        Image.asset(
                          'assets/Whats15.jpg',
                          width: 100,
                          height: 400,
                        ),
                        const SizedBox(width: 3),
                        Image.asset(
                          'assets/Whats16.jpg',
                          width: 100,
                          height: 400,
                        ),
                        const SizedBox(width: 3),
                        Image.asset(
                          'assets/Whats17.jpg',
                          width: 100,
                          height: 400,
                        ),
                        const SizedBox(width: 3),
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
          ),
          Container(
            height: 500,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 6600),
            child: Column(
              children: [
                const Text(
                  "Your funds are held in",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "top-tier institutions",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "The AutoX Global Trade with the globally",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const Text(
                  "renown banking partners including",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Whats21.jpg',
                            width: 150,
                            height: 400,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/Whats22.jpg',
                            width: 150,
                            height: 400,
                          ),
                        ],
                      ),

                      // Reduced height here
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Whats23.jpg',
                            width: 150,
                            height: 400,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/Whats24.jpg',
                            width: 150,
                            height: 400,
                          ),
                        ],
                      ),

                      // Reduced height here
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Whats25.jpg',
                            width: 150,
                            height: 400,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/Whats26.jpg',
                            width: 150,
                            height: 400,
                          ),
                        ],
                      ),

                      // Reduced height here
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 10),
                const Text(
                  "* This banks are partnered with etoro",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "group do not serve all entities within",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "the group",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 7100),
            child: Column(
              children: [
                Image.asset(
                  'assets/Whats31.png',
                  width: 800,
                  height: 400,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 85), // Adjust the value as needed
                        child: Container(
                          width: 200,
                          height: 30,
                          color: Colors.transparent,
                          // Adjust left padding as needed
                          child: const Text(
                            "Diversify your",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 85), // Adjust the value as needed
                        child: Container(
                          width: 200,
                          height: 30,
                          color: Colors.transparent,
                          // Adjust left padding as needed
                          child: const Text(
                            "portfolio",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invest in a variety of asset classes -",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "including 20 global stock exchanges",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "and 100 cryptocurrencies - while",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "manage all of your holdings in one",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "place",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            height: 600,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 7800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 85), // Adjust the value as needed
                    child: Container(
                      width: 200,
                      height: 30,
                      color: Colors.transparent,
                      // Adjust left padding as needed
                      child: const Text(
                        "Trusted worlwide",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Discover why millions of investors ",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "from over 100 countries joined",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "AutoX Global Trade",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 80,
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/social.jpeg',
                                        width: 100,
                                        height: 120,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "Social",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "More than 30 million users globally",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 120,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 80,
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/reliable.jpeg',
                                        width: 100,
                                        height: 120,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "Reliable",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "A leader in the fintech space in 2007",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 120,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 80,
                                      color: Colors.transparent,
                                      child: Image.asset(
                                        'assets/global.png',
                                        width: 100,
                                        height: 120,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "Global",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Providing services around the world",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
//
          // Sixth Container
          Container(
            color: Colors.black,
            height: 300,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 8400),
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
            height: 350,
            margin: const EdgeInsets.only(top: 8700),
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
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen5
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GoldMiningPageM()),
                            );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Gold mining'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen6
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoanPageM()),
                            );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Loan'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen5
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RealEstatePageM()),
                            );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Real estate'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen6
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NonFarmPageM()),
                            );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('NFP'),
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
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const ThirdContainerM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('About Us'),
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
                          child: const Text('Legal fills'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen1
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const ThirdContainerM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Imprint'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen1
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const ThirdContainerM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('PDF'),
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
                          child: const Text('FAQ'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 250,
            margin: const EdgeInsets.only(top: 9050),
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
                          '  Pricing',
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
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const StockPageM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Basic plan'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen6
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const CryptoPageM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Defi plan'),
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
                          '  Contact Us',
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
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const ThirdContainerM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Call'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen1
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const ThirdContainerM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('WhatsApp'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to Screen1
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           const ThirdContainerM()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                          ),
                          child: const Text('Support'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   color: Colors.grey,
          //   height: 700,
          //   margin: const EdgeInsets.only(top: 5800),
          //   child: const Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           'Eleven container content',
          //           style: TextStyle(color: Colors.white),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

Widget _buildInfoContainer(IconData icon, String title, String explanation) {
  return Container(
    width: 300,
    child: Column(
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: Colors.green,
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
        const SizedBox(height: 5),
        Text(
          explanation,
          style: const TextStyle(
            color: Colors.white,
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
      ],
    ),
  );
}
