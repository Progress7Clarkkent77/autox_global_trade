import 'package:autox_global_trade/Authentication/dialog_auth.dart';
import 'package:autox_global_trade/Top%20Container/button1.dart';
import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
import 'package:autox_global_trade/Top%20Container/crypto_pageT.dart';
import 'package:autox_global_trade/Top%20Container/crypto_price.dart';
//import 'package:autox_global_trade/Top%20Container/custom_dialog.dart';
import 'package:autox_global_trade/Top%20Container/dialog_video.dart';
import 'package:autox_global_trade/Top%20Container/gold_miningT.dart';
import 'package:autox_global_trade/Top%20Container/loanT.dart';
import 'package:autox_global_trade/Top%20Container/non_farmT.dart';
import 'package:autox_global_trade/Top%20Container/real_estateT.dart';
import 'package:autox_global_trade/Top%20Container/search.dart';
import 'package:autox_global_trade/Top%20Container/stock.dart';
import 'package:autox_global_trade/Top%20Container/stockT.dart';
import 'package:autox_global_trade/Top%20Container/third_containerT.dart';
import 'package:autox_global_trade/Top%20Container/your_w.dart';
//import 'package:autox_global_trade/home/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // First Container with Background Image
          Container(
            height: 700,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                // Container 1
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
                          fontSize: 20.0,
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
                                builder: (context) => const AuthDialog(),
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

                // Container 2
                Container(
                  height: 250,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Look First /\nThen Leap.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60.0,
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

                // Container 3
                Container(
                  height: 100,
                  color: Colors.transparent,
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

                // Container 4
                const FractionallySizedBox(
                  widthFactor: 0.8,
                  child: SearchBarWidget(),
                ),

                // Container 5
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    height: 100,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Handle the click event for the first black container here
                                print('BTCUSD container clicked!');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Container(
                                  width: 140,
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
                                          // Text(
                                          //   'BTCUSD',
                                          //   style: TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 12.0,
                                          //     fontWeight: FontWeight.bold,
                                          //   ),
                                          // ),
                                          // SizedBox(height: 5),
                                          // Text(
                                          //   '35 600.00 USD',
                                          //   style: TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 10.0,
                                          //   ),
                                          // ),
                                          BTCPriceWidget1(),
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
                                //print('ETHUSD container clicked!');
                              },
                              child: Container(
                                width: 140,
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
                                          'assets/2.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ETHPriceWidget1(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                                width: 20), // Adjust spacing as needed
                            GestureDetector(
                              onTap: () {
                                // Handle the click event for the third black container here
                                //print('LTCUSD container clicked!');
                              },
                              child: Container(
                                width: 140,
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
                                          'assets/3.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        LTCPriceWidget1(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                // Handle the click event for the third black container here
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return DialogContainer();
                                  },
                                );
                                print('Watch Explainer');
                              },
                              child: Container(
                                width: 60,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                        width: 10), // Adjusted spacing
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.play_circle_fill,
                                          size: 20,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
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
          Container(
            height: 700,
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
            margin: const EdgeInsets.only(top: 700),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Text(
                      'Elevate your financial approach to a symphony of success, where cutting-edge \nautomation orchestrates the world of market.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24, // Adjusted font size for tablet
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
                  const SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Button click action
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.black.withOpacity(0.5),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(
                  //           5.0), // Adjusted radius for tablet
                  //     ),
                  //     elevation: 0, // No elevation for tablet
                  //   ),
                  //   child: const Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Text(
                  //         'Read more',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           //fontWeight: FontWeight.bold,
                  //           fontSize: 14, // Adjusted font size for tablet
                  //         ),
                  //       ),
                  //       Icon(
                  //         Icons.keyboard_arrow_down,
                  //         color: Colors.white,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 40, // Adjust the size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.attach_money,
                        size: 40, // Adjust the size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.attach_money,
                        size: 40, // Adjust the size as needed
                        color: Colors.white, // Adjust the color as needed
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Take full control of your financial growth, Make the switch and start investing with us.',
                    style: TextStyle(
                      color: Colors.white,

                      fontSize: 20, // Adjusted font size for tablet
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
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),

          Container(
            height: 700,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.blueGrey,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            margin: const EdgeInsets.only(top: 1400),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.transparent,
                    child: const Center(
                      child: Text(
                        'Who we are?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
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
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.transparent,
                    child: const Center(
                      child: Text(
                        'Bridging the Gap Between Technology and Investment',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Adjusted font size for tablet
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
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.transparent,
                    child: const Center(
                      child: Text(
                        'At AutoX Global Trade, we are more than just a trading platform. We are a team of dedicated finance and technology professionals committed to making sophisticated investment strategies \naccessible to everyone. We bind cutting-edge technology an investing experience unlike any other. Our mission is to empower and excite both first-time investors and seasoned traders alike.',
                        style: TextStyle(
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                          fontSize: 11,
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
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 270,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(width: 15),
                            _buildInfoContainer(
                              Icons.monetization_on,
                              'Pioneers in Automated Trading',
                              'Built upon robust algorithms and advanced artificial intelligence, our platform streamlines the complexities of trading. We have designed a system that works seamlessly to automate trading activities, so you can focus more on your investment goals and less on the logistical details.',
                            ),
                            const SizedBox(width: 15),
                            _buildInfoContainer(
                              Icons.monetization_on_outlined,
                              'Breaking Barriers in investment',
                              'Automated investing, we have cultivated a platform hat breaks down the barriers to entry for all. No matter the size of your portflio or level or expertise, we the potential of stocks and cryptocurrencies and beyond.',
                            ),
                            const SizedBox(width: 15),
                            _buildInfoContainer(
                              Icons.design_services,
                              'User-Centric by Design',
                              'Our platform is built with user at the for forfront. Just like the most intuitive financial platforms, we prioritize a seamless user interface and a hassle-free user experience. we guide and support our users every step of the way to ensure they are making informed investment decisions.',
                            ),
                            // const SizedBox(width: 15),
                            // _buildInfoContainer(
                            //   Icons.inventory_sharp,
                            //   'Commited to Innovation and Integrity',
                            //   'As part of our commitment to offering a truly exceptional platform, we continually innovate, evolve and adapt. Our operations and offerings are always transparent and in strict accordance with regulatory standards, ensuring you can trust us to keep your investments secure.',
                            // ),
                            //It's note-worthy, though, to tailor this template according to your actual practices and principles, making it true to your brand.'
                            const SizedBox(width: 12),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 2, // Adjust the height as needed
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Button click action
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThirdContainerT(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fixedSize: const Size(180, 40),
                      elevation: 30,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Read more',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 38, // Adjust the height as needed
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 190,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage('assets/14.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          color: Colors.transparent,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 10),
                              Center(
                                child: Text(
                                  'Stop leaving money on the table.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        24, // Adjusted font size for tablet
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
                                  'Start investing with AutoX Global Trade today, Get access to wealth creation that was previously reserved for the top 1% of people.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        16, // Adjusted font size for tablet
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
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          Container(
            height: 1750,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 2100),
            child: Column(
              children: [
                Center(
                  child: Container(
                    color: Colors.transparent,
                    height:
                        MediaQuery.of(context).size.width >= 768 ? 210 : 700,
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
                              fontSize: 35,
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
                            'We give you the option to switch investments as your financial circumstances \nchanges. You can change how you invest to suit your needs without additional \ncosts!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
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
                  height: 700,
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container 1
                      Container(
                        width: (MediaQuery.of(context).size.width - 90) / 3,
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
                              const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/cryptocurrencies.jpg',
                                  ),
                                  height: 350,
                                  width: 420,
                                  color: Colors.transparent,
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Text(
                                'Crypto Currency',
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
                              const SizedBox(height: 10),
                              const Text(
                                'Crypto trading is the buying and selling of crypto or digital assets, such as cryptocurrencies, tokens and NFTs (non-fungible tokens). Forex trading means swapping one fiat currency for another in the hope the currency will rise in value.',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CryptoPageT(), // Replace Test with the actual page you want to navigate to
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

                      // Container 2
                      Container(
                        width: (MediaQuery.of(context).size.width - 90) / 3,
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
                              const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/2.jpg',
                                  ),
                                  height: 350,
                                  width: 420,
                                  color: Colors.transparent,
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Text(
                                'Gold Mining',
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
                              const SizedBox(height: 10),
                              const Text(
                                'Gold is commonly seen as a great store of wealth, this precious metal is also known as a reliable safe-haven asset. With a rich history amongst almost all global cultures, gold remains a highly popular investment with multiple uses.',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GoldMiningPageT(),
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

                      // Container 3
                      Container(
                        width: (MediaQuery.of(context).size.width - 90) / 3,
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
                              const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/3.jpg',
                                  ),
                                  height: 350,
                                  width: 420,
                                  color: Colors.transparent,
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Text(
                                'Loan',
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
                              const SizedBox(height: 10),
                              const Text(
                                'Getting a loan doesnt have to be intimidating, with the right lender it can be a simple process. You only need a lender committed to ...',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoanPageT(),
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
                Container(
                  height: MediaQuery.of(context).size.width >= 768 ? 700 : 700,
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container 1
                      Container(
                        width: (MediaQuery.of(context).size.width - 90) / 3,
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
                              const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/5.jpg',
                                  ),
                                  height: 350,
                                  width: 420,
                                  color: Colors.transparent,
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Text(
                                'Stocks',
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
                              const SizedBox(height: 10),
                              const Text(
                                'Invest in commodity-related stocks. Buying stocks to related to certain commodities is a way to bet on the value of a commodity without incurring all of the risk of futures trading.',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const StockPageT(),
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

                      // Container 2
                      Container(
                        width: (MediaQuery.of(context).size.width - 90) / 3,
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
                              const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/6.jpg',
                                  ),
                                  height: 350,
                                  width: 420,
                                  color: Colors.transparent,
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Text(
                                'non-farm payroll (NFP)',
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
                              const SizedBox(height: 10),
                              const Text(
                                'The non-farm payroll report causes one of the consistently largest rate movements of any news announcement in the forex market. As a result, many analysts,',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NonFarmPageT(),
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

                      // Container 3
                      Container(
                        width: (MediaQuery.of(context).size.width - 90) / 3,
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
                              const Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/4.jpg',
                                  ),
                                  height: 350,
                                  width: 420,
                                  color: Colors.transparent,
                                ),
                              ),
                              const SizedBox(height: 0),
                              const Text(
                                'Real Estate',
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
                              const SizedBox(height: 10),
                              const Text(
                                'Management of property both owned and funded. We make sure that you get the maximum return on every property funded with your asset.',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RealEstatePageT(),
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
              ],
            ),
          ),

          Container(
            height: 500,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 3750),
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
            height: 600,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 4100),
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
                  height: MediaQuery.of(context).size.width >= 768 ? 310 : 310,
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Container 1
                      Container(
                        width: 300,
                        height: 400,
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
                                'A good financial plan is the blueprint that helps you make decisions holistically and confidently. We can help our clients with budgeting and cash flow analysis, estate and tax planning, and even strategies for maximizing Social Security.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Container 2
                      Container(
                        width: 280,
                        height: 400,
                        margin: const EdgeInsets.only(right: 10, left: 10),
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
                                'We work now to help you stop working later. Tell us when and where you want to retire, and how much you’ve saved so far. We’ll help give you a sense of where you stand and guide you on the path forward.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Container 3
                      Container(
                        width: 280,
                        height: 400,
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
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
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
                        width: (MediaQuery.of(context).size.width - 110) / 2,
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
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: const Icon(
                                        Icons.pages,
                                        size: 50,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                          fontSize: 12.0,
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
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: const Icon(
                                        Icons.manage_search,
                                        size: 50,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            fontSize: 12.0,
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
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: const Icon(
                                        Icons.workspace_premium,
                                        size: 50,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            fontSize: 12.0,
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

                      // Container 2
                      Container(
                        height: 700,
                        width: (MediaQuery.of(context).size.width - 110) / 2,
                        margin: const EdgeInsets.only(right: 10, left: 10),
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
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 550,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 5250),
            child: const YourWidget(),
          ),
          Container(
            height: 850,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 5800),
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
                        width: 450,
                        height: 400,
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
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: const Icon(
                                        Icons.key_rounded,
                                        size: 50,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        'We protect our investors with the best sophisticated online \nprotection measures and high-grade SSL encryption',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
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
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: const Icon(
                                        Icons.manage_search,
                                        size: 50,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                          fontSize: 12.0,
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
                                      borderRadius: BorderRadius.circular(25.0),
                                      child: const Icon(
                                        Icons.workspace_premium,
                                        size: 50,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 30),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        'Our team is always available to respond to issues when \never they arise.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
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

                      // Container 2
                      Container(
                        width: (MediaQuery.of(context).size.width - 150) / 2,
                        margin: const EdgeInsets.only(right: 10, left: 10),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
// Container(
//             height: 700,
//             color: Colors.deepOrange,
//             margin: const EdgeInsets.only(top: 7200),
//             child: const Center(
//               child: Text(
//                 "Tenth Container",
//               ),
//             ),
//           ),
          Container(
            height: 300,
            color: Colors.transparent,
            margin: const EdgeInsets.only(top: 6600),
            child: Column(
              children: [
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
                        width: 400,
                        height: 400,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: MediaQuery.of(context).size.width >= 768
                                    ? 15
                                    : 15),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Investing with Impact',
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 30.0,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Container 2
                      Container(
                        width: 500,
                        height: 400,
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
                            SizedBox(
                                height: MediaQuery.of(context).size.width >= 768
                                    ? 20
                                    : 20),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\n\n“To us, the necessary capital to have real impact, sustainable investing can’t \nbe limited to investors willing to accept unattractive returns in order to create \nsocial good. Getting to scale requires investment products that seek attractive \nreturns while benefiting society. This is the philosophy behind our Investing \nwith Impact strategy."',
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
          Container(
            color: Colors.black, // Background color of the main container
            height: 750, // Set the height as per your requirement
            margin: const EdgeInsets.only(top: 6900),
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
                        color:
                            Colors.transparent, // Color of the second container
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
    );
  }
}

Widget _buildInfoContainer(IconData icon, String title, String explanation) {
  return Container(
    width: 300, // Adjust the width as needed
    child: Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
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
        const SizedBox(height: 13),
        Text(
          explanation,
          style: const TextStyle(
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
      ],
    ),
  );
}
