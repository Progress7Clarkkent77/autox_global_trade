import 'package:flutter/material.dart';
import 'dart:async';

class YourWidget1 extends StatefulWidget {
  const YourWidget1({Key? key}) : super(key: key);

  @override
  _YourWidgetState createState() => _YourWidgetState();
}

class _YourWidgetState extends State<YourWidget1> {
  int currentIndex = 0;
  late Timer timer;

  List<Map<String, dynamic>> containerData = [
    {
      'imageName': 'assets/images/a/1.jpg',
      'title': 'Daniel Mitchell',
      'content':
          'I\'ve been on AutoX Global Trade for a while now, and let me tell you, the platform\'s auto trading is a game-changer. Investing in crypto, stocks, and more has never been this profitable.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/2.jpg',
      'title': 'Olivia Williams',
      'content':
          'Olivia here! AutoX Global Trade is my go-to for smart investments. The platform\'s reliability in generating profits across different markets is unmatched. It\'s not just trading; it\'s a strategy for financial success.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/3.jpg',
      'title': 'Ryan Foster',
      'content':
          'Ryan checking in! AutoX Global Trade is my secret to success in trading. The platform\'s user-friendly interface and automated features have played a significant role in my journey of financial growth through investments.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/4.jpg',
      'title': 'Jessica Turner',
      'content':
          'Hey, Jessica here! AutoX Global Trade is where I explore crypto, stocks, and investments. The platform\'s seamless experience and consistent profits have made it my trusted partner in the dynamic world of trading.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/5.jpg',
      'title': 'Michael Rodriguez',
      'content':
          'Michael Rodriguez, and let me tell you, AutoX Global Trade is where it\'s at. The platform\'s efficiency in generating profits is on another level. My portfolio growth speaks volumes about its reliability in trading.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/6.jpg',
      'title': 'Sophie Müller',
      'content':
          'Sophie here! AutoX Global Trade makes European markets a breeze. The platform\'s auto trading is a game-changer for me. Smart investments and sustained financial growth are what you can expect.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/8.jpg',
      'title': 'Matteo Rossi',
      'content':
          'Matteo checking in! AutoX Global Trade is my key to success in crypto, stocks, and investments. The platform\'s adaptability to the European financial landscape sets it apart. Consistent profits are the name of the game.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/9.jpg',
      'title': 'Elena Petrov',
      'content':
          'Elena here! AutoX Global Trade is my go-to for trading success in Europe. The platform\'s versatility and reliability make it easy for me to diversify my portfolio and thrive in the dynamic market.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/10.jpg',
      'title': 'Frederik Andersen',
      'content':
          'Frederik reporting! AutoX Global Trade maximizes my profits in European markets. The platform\'s cutting-edge technology and seamless trading across financial instruments are the reasons behind my financial prosperity.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/11.jpg',
      'title': 'Isabella Fischer',
      'content':
          'Isabella here! AutoX Global Trade is where I navigate European trading. The platform\'s commitment to providing lucrative opportunities across various markets is evident in my diversified and thriving portfolio.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/12.jpg',
      'title': 'Kwame Osei',
      'content':
          'Kwame here! AutoX Global Trade is my ticket to success in African markets. The platform\'s intuitive design and auto trading capabilities are crucial for my continuous financial growth.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/13.jpg',
      'title': 'Aisha Nkosi',
      'content':
          'Aisha checking in! AutoX Global Trade empowers me in the African investment landscape. The platform\'s adaptability and reliability play a crucial role in my strategic decisions and consistent profits.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/14.jpg',
      'title': 'Chijioke Okonkwo',
      'content':
          'Chijioke here! AutoX Global Trade is where I find prosperity in African markets. The platform\'s seamless execution of trades significantly contributes to my financial growth and success.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/15.jpg',
      'title': 'Fatima Diop',
      'content':
          'Fatima reporting! AutoX Global Trade is my success story in African investments. The platform\'s effectiveness in navigating diverse opportunities is evident in my growing portfolio.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/16.jpg',
      'title': 'Moussa Kamara',
      'content':
          'Moussa here! AutoX Global Trade is my go-to for enterprising trading in the African context. The platform\'s capabilities for crypto, stocks, and investments contribute to my success and highlight its versatility.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/17.jpg',
      'title': 'Sato Takahashi',
      'content':
          'Sato here! AutoX Global Trade is my go-to for seamless trading in Asian markets. The platform\'s automated features and reliability have contributed significantly to my sustained financial gains.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/18.jpg',
      'title': 'Ananya Patel',
      'content':
          'Ananya checking in! AutoX Global Trade is my strategy for navigating Asian markets. The platform\'s diverse investment options and automated trading enhance my financial portfolio for consistent profits.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/19.jpg',
      'title': 'Chen Wei',
      'content':
          'Chen Wei here! AutoX Global Trade is where I find success in Asian markets. The platform\'s user-friendly interface and efficient trading mechanisms have been instrumental in my financial journey.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/20.jpg',
      'title': 'Yuki Tanaka',
      'content':
          'Yuki reporting! AutoX Global Trade is my key to thriving in the Asian investment landscape. The platform\'s adaptability and reliability empower me to make informed decisions, resulting in consistent profits.',
      'rate': '⭐⭐⭐⭐⭐',
    },
    {
      'imageName': 'assets/images/a/21.jpg',
      'title': 'Priya Sharma',
      'content':
          'Priya here! AutoX Global Trade is my avenue for exploring diverse opportunities in Asian markets. The platform\'s commitment to innovation and seamless trading plays a crucial role in my financial success.',
      'rate': '⭐⭐⭐⭐⭐',
    },
  ];
  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 3), (Timer t) {
      setState(() {
        currentIndex = (currentIndex + 1) % containerData.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 600,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Center(
            child: Container(
              color: Colors.transparent,
              height: 120,
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'What Our Users Say',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 360,
            color: Colors.transparent,
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: containerData.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 250,
                  height: 330,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            containerData[(currentIndex + index) %
                                containerData.length]['imageName'],
                            width: 40,
                            height: 40,
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Text(
                            containerData[(currentIndex + index) %
                                containerData.length]['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
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
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Text(
                            containerData[(currentIndex + index) %
                                containerData.length]['content'],
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          containerData[(currentIndex + index) %
                              containerData.length]['rate'],
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
