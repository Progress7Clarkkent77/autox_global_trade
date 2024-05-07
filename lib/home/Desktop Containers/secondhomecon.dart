//import 'package:autox_global_trade/Top%20Container/secondcontainer.dart';
import 'package:flutter/material.dart';

class SecondHomeContainer extends StatelessWidget {
  const SecondHomeContainer({
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
            //Colors.lightGreenAccent,
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  bottom:
                      10), // Move the first text upward by adjusting the bottom margin
              child: const Text(
                'Elevate your financial approach to a symphony of success, \nwhere cutting-edge automation orchestrates the world of market.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 55,
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
              height: 20, // Adjust the height as needed
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Button click action
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SecondContainer(),
            //       ),
            //     );
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
            //     elevation: 5, // Add elevation for shadow
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.attach_money,
                  size: 58, // Adjust the size as needed
                  color: Colors.white, // Adjust the color as needed
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.attach_money,
                  size: 58, // Adjust the size as needed
                  color: Colors.white, // Adjust the color as needed
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.attach_money,
                  size: 58, // Adjust the size as needed
                  color: Colors.white, // Adjust the color as needed
                ),
              ],
            ),
            const SizedBox(
              height: 5, // Adjust the height as needed
            ),

            // Add some space between the two text widgets
            const Text(
              'Take full control of your financial growth, Make the switch and start investing with us.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
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
      // Other container properties and widgets go here
    );
  }
}
