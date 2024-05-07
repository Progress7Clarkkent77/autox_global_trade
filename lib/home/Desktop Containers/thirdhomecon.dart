import 'package:autox_global_trade/Top%20Container/third_container.dart';
import 'package:flutter/material.dart';

class ThirdHomeContainer extends StatelessWidget {
  const ThirdHomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            // Additional container beneath the top container
            width: double.infinity,
            height: 50, // Set the height as per your requirement
            color: Colors.transparent, // Change color or add your content
            child: const Center(
              child: Text(
                'Bridging the Gap Between Technology and Investment',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
              ),
              // Other container properties and widgets go here
            ),
          ),
          Container(
            // Additional container beneath the top container
            width: double.infinity,
            height: 50, // Set the height as per your requirement
            color: Colors.transparent, // Change color or add your content
            child: const Center(
              child: Text(
                'At AutoX Global Trade, we are more than just a trading platform. We are a team of dedicated finance and technology professionals committed to making sophisticated investment strategies \naccessible to everyone. We bind cutting-edge technology an investing experience unlike any other. Our mission is to empower and excite both first-time investors and seasoned traders alike.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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

              // Other container properties and widgets go here
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 270,
            color: Colors.transparent,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 12),
                    _buildInfoContainer(
                        Icons.monetization_on,
                        'Pioneers in Automated Trading',
                        'Built upon robust algorithms and advanced artificial intelligence, our platform streamlines the complexities of trading. We have designed a system that works seamlessly to automate trading activities, so you can focus more on your investment goals and less on the logistical details.'),
                    const SizedBox(width: 12),
                    _buildInfoContainer(
                        Icons.monetization_on_outlined,
                        'Breaking Barriers in investment',
                        'Automated investing, we have cultivated a platform hat breaks down the barriers to entry for all. No matter the size of your portflio or level or expertise, we the potential of stocks and cryptocurrencies and beyond.'),
                    const SizedBox(width: 12),
                    _buildInfoContainer(
                        Icons.design_services,
                        'User-Centric by Design',
                        'Our platform is built with user at the for forfront. Just like the most intuitive financial platforms, we prioritize a seamless user interface and a hassle-free user experience. we guide and support our users every step of the way to ensure they are making informed investment decisions.'),
                    const SizedBox(width: 12),
                    _buildInfoContainer(
                        Icons.inventory_sharp,
                        'Commited to Innovation and Integrity',
                        'As part of our commitment to offering a truly exceptional platform, we continually innovate, evolve and adapt. Our operations and offerings are always transparent and in strict accordance with regulatory standards, ensuring you can trust us to keep your investments secure.'),
                    //Its note-worthy, though, to tailor this template according to your actual practices and principles, making it true to your brand.'
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
                  builder: (context) => const ThirdContainer(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
                  .withOpacity(0.5), // Adjust the alpha value for transparency
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
              fixedSize:
                  const Size(180, 40), // Set the height and width of the button
              elevation: 30, // Add elevation for shadow
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
                ), // Use keyboard arrow down icon
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
                // Other container properties and widgets go here
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
                            fontSize: 40,
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
                            fontSize: 20,
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
      // Other container properties and widgets go here
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
          size: 50,
          color: Colors.white,
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
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
