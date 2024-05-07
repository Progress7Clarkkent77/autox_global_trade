// ignore_for_file: deprecated_member_use

import 'package:autox_global_trade/all%20code/ConstData/colorprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../ConstData/typography.dart';
import '../../../controller/sellcrypto_controller.dart';

class SellStep1 extends StatefulWidget {
  const SellStep1({super.key});

  @override
  State<SellStep1> createState() => _SellStep1State();
}

class _SellStep1State extends State<SellStep1> {
  ColorNotifire notifire = ColorNotifire();
  SellCryptoController sellCryptoController = Get.put(SellCryptoController());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<SellCryptoController>(builder: (sellCryptoController) {
      return LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                height: 800,
                width: 800,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: notifire.getGry50_800Color,
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Crypto",
                        style: Typographyy.heading5
                            .copyWith(color: notifire.getTextColor),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            style: Typographyy.bodyMediumMedium
                                .copyWith(color: notifire.getTextColor),
                            decoration: InputDecoration(
                              suffixIcon: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Center(
                                      child: SvgPicture.asset(
                                    "assets/images/Search.svg",
                                    height: 20,
                                    width: 20,
                                    color: notifire.getGry500_600Color,
                                  ))),
                              hintText: "Search Coins",
                              hintStyle: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: notifire.getGry700_300Color)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: notifire.getGry700_300Color)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: notifire.getGry700_300Color)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: notifire.getGry700_300Color)),
                            ),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Table(
                              columnWidths: const {
                                0: FixedColumnWidth(80),
                                1: FixedColumnWidth(400),
                                2: FixedColumnWidth(120),
                                3: FixedColumnWidth(120),
                              },
                              children: [
                                TableRow(children: [
                                  Row(
                                    children: [
                                      Text(
                                        "#",
                                        style: Typographyy.bodyMediumExtraBold
                                            .copyWith(
                                                color: notifire
                                                    .getGry500_600Color),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          "assets/images/Group 47984.svg",
                                          height: 14,
                                          width: 14,
                                          color: notifire.getGry500_600Color),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Name",
                                        style: Typographyy.bodyMediumExtraBold
                                            .copyWith(
                                                color: notifire
                                                    .getGry500_600Color),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          "assets/images/Group 47984.svg",
                                          height: 14,
                                          width: 14,
                                          color: notifire.getGry500_600Color),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Price",
                                        style: Typographyy.bodyMediumExtraBold
                                            .copyWith(
                                                color: notifire
                                                    .getGry500_600Color),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          "assets/images/Group 47984.svg",
                                          height: 14,
                                          width: 14,
                                          color: notifire.getGry500_600Color),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "24h",
                                        style: Typographyy.bodyMediumExtraBold
                                            .copyWith(
                                                color: notifire
                                                    .getGry500_600Color),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                          "assets/images/Group 47984.svg",
                                          height: 14,
                                          width: 14,
                                          color: notifire.getGry500_600Color),
                                    ],
                                  ),
                                ]),
                                _rowDivider(),
                                _row(
                                    number: "1",
                                    coinname: "Bitcoin",
                                    subname: "BTC",
                                    price: "\$29,955",
                                    pr: "2.9%",
                                    iconpath: "assets/images/btc.png"),
                                _rowDivider(),
                                _row(
                                    number: "2",
                                    coinname: "Tron",
                                    subname: "TRC",
                                    price: "\$9,915",
                                    pr: "1.9%",
                                    iconpath: "assets/images/trx.png"),
                                _rowDivider(),
                                _row(
                                    number: "3",
                                    coinname: "Ethereum",
                                    subname: "ETH",
                                    price: "\$2,295",
                                    pr: "0.9%",
                                    iconpath: "assets/images/eth.png"),
                                _rowDivider(),
                                _row(
                                    number: "4",
                                    coinname: "Us Dollar",
                                    subname: "USD",
                                    price: "\$1,235",
                                    pr: "1.9%",
                                    iconpath: "assets/images/usdt.png"),
                                _rowDivider(),
                                _row(
                                    number: "5",
                                    coinname: "Bitcoin",
                                    subname: "BTC",
                                    price: "\$29,955",
                                    pr: "2.9%",
                                    iconpath: "assets/images/btc.png"),
                                _rowDivider(),
                                _row(
                                    number: "6",
                                    coinname: "Tron",
                                    subname: "TRC",
                                    price: "\$9,915",
                                    pr: "1.9%",
                                    iconpath: "assets/images/trx.png"),
                                _rowDivider(),
                                _row(
                                    number: "7",
                                    coinname: "Ethereum",
                                    subname: "ETH",
                                    price: "\$2,295",
                                    pr: "0.9%",
                                    iconpath: "assets/images/eth.png"),
                                _rowDivider(),
                                _row(
                                    number: "8",
                                    coinname: "Us Dollar",
                                    subname: "USD",
                                    price: "\$1,235",
                                    pr: "1.9%",
                                    iconpath: "assets/images/usdt.png"),
                                _rowDivider(),
                              ],
                            ),
                          ],
                        ),
                      )

                      // ElevatedButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         buyCryptoCreditCard.selectStep++;
                      //       });
                      //       buyCryptoCreditCard.setSelectStep(buyCryptoCreditCard.selectStep);
                      //         buyCryptoCreditCard.selectIndex.add(0);
                      //       buyCryptoCreditCard.scrollController.animateTo(100, duration: const Duration(milliseconds: 1000), curve: Curves.easeIn);
                      // }, child: const Text("Next"))
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      });
    });
  }

  TableRow _row(
      {required String number,
      required String coinname,
      required String subname,
      required String price,
      required String pr,
      required String iconpath}) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset("assets/images/star.svg",
                height: 20, width: 20, color: notifire.getGry500_600Color),
            const SizedBox(
              width: 8,
            ),
            Text(
              number,
              style: Typographyy.bodyMediumMedium
                  .copyWith(color: notifire.getGry500_600Color),
            ),
          ],
        ),
      ),
      ListTile(
        onTap: () {
          setState(() {
            sellCryptoController.selectStep++;
          });
          sellCryptoController.setSelectStep(sellCryptoController.selectStep);
          sellCryptoController.selectIndex.add(0);
          sellCryptoController.scrollController.animateTo(220,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeIn);
        },
        dense: true,
        contentPadding: const EdgeInsets.all(0),
        leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(iconpath),
            radius: 18),
        title: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "$coinname ",
              style: Typographyy.bodyMediumMedium
                  .copyWith(color: notifire.getTextColor)),
          TextSpan(
              text: subname,
              style: Typographyy.bodyMediumMedium
                  .copyWith(color: notifire.getGry500_600Color)),
        ])),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          price,
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getTextColor),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              pr,
              style: Typographyy.bodyMediumMedium.copyWith(color: Colors.green),
            ),
          ],
        ),
      ),
    ]);
  }

  TableRow _rowDivider() {
    return TableRow(children: [
      Divider(height: 48, color: notifire.getGry700_300Color),
      Divider(height: 48, color: notifire.getGry700_300Color),
      Divider(height: 48, color: notifire.getGry700_300Color),
      Divider(height: 48, color: notifire.getGry700_300Color),
    ]);
  }
}
