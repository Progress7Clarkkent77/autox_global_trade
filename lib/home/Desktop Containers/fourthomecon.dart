import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
import 'package:autox_global_trade/Top%20Container/gold_mining.dart';
import 'package:autox_global_trade/Top%20Container/loan.dart';
import 'package:autox_global_trade/Top%20Container/non_farm.dart';
import 'package:autox_global_trade/Top%20Container/real_estate.dart';
import 'package:autox_global_trade/Top%20Container/stock.dart';
//import 'package:autox_global_trade/home/test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FourthHomeContainer extends StatelessWidget {
  const FourthHomeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1650,
      //color: Colors.red,
      child: Column(
        children: [
          Center(
            child: Container(
              color: Colors.transparent,
              height: 210,
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

                  // Other container properties and widgets go here
                ],
              ),
            ),
          ),
          Container(
            height: 720,
            color: Colors.transparent,
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container 1
                Container(
                  width: (MediaQuery.of(context).size.width - 220) / 3,
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
                              'assets/images/cryptocurrencies.jpg', // Replace with the actual path to your image asset
                            ),
                            height: 350, // Adjust the height of the image
                            width:
                                420, // Adjust the width of the image to fill the container
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                          'Crypto trading is the buying and selling of crypto or digital assets, such as cryptocurrencies, tokens and NFTs (non-fungible tokens). Forex trading means swapping one fiat currency for another in the hope the currency will rise in value.Crypto currencies are sets of software protocols for generating digital tokens and for tracking transactions in a way that makes it hard to counterfeit or re-use tokens.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        TextButton(
                          onPressed: () {
                            // Add the action you want to perform when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CryptoPage(), // Replace Test with the actual page you want to navigate to
                              ),
                            );
                          },
                          child: const Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container 2
                Container(
                  width: (MediaQuery.of(context).size.width - 220) / 3,
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
                              'assets/images/2.jpg', // Replace with the actual path to your image asset
                            ),
                            height: 350, // Adjust the height of the image
                            width:
                                420, // Adjust the width of the image to fill the container
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                            // Add the action you want to perform when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GoldMiningPage(), // Replace Test with the actual page you want to navigate to
                              ),
                            );
                          },
                          child: const Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container 3
                Container(
                  width: (MediaQuery.of(context).size.width - 220) / 3,
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
                              'assets/images/3.jpg', // Replace with the actual path to your image asset
                            ),
                            height: 350, // Adjust the height of the image
                            width:
                                420, // Adjust the width of the image to fill the container
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                            // Add the action you want to perform when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoanPage(), // Replace Test with the actual page you want to navigate to
                              ),
                            );
                          },
                          child: const Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
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
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container 1
                Container(
                  width: (MediaQuery.of(context).size.width - 220) / 3,
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
                              'assets/images/5.jpg', // Replace with the actual path to your image asset
                            ),
                            height: 350, // Adjust the height of the image
                            width:
                                420, // Adjust the width of the image to fill the container
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                          'Invest in commodity-related stocks. Buying stocks to related to certain commodities is a way to bet on the value of a commodity without incurring all of the risk of futures trading. Commodity investments tend to attract more investor attention when inflation fears start to mount.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        TextButton(
                          onPressed: () {
                            // Add the action you want to perform when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const StockPage(), // Replace Test with the actual page you want to navigate to
                              ),
                            );
                          },
                          child: const Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container 2
                Container(
                  width: (MediaQuery.of(context).size.width - 220) / 3,
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
                              'assets/images/6.jpg', // Replace with the actual path to your image asset
                            ),
                            height: 350, // Adjust the height of the image
                            width:
                                420, // Adjust the width of the image to fill the container
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                            // Add the action you want to perform when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NonFarmPage(), // Replace Test with the actual page you want to navigate to
                              ),
                            );
                          },
                          child: const Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container 3
                Container(
                  width: (MediaQuery.of(context).size.width - 220) / 3,
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
                              'assets/images/4.jpg', // Replace with the actual path to your image asset
                            ),
                            height: 350, // Adjust the height of the image
                            width:
                                420, // Adjust the width of the image to fill the container
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                            // Add the action you want to perform when the button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RealEstatePage(), // Replace Test with the actual page you want to navigate to
                              ),
                            );
                          },
                          child: const Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
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
    );
  }
}
