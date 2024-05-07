// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../CommonWidgets/card.dart';
import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/staticdata.dart';
import '../../ConstData/typography.dart';
import '../../controller/dashbordecontroller.dart';
import '../../controller/mywalletscontroller.dart';

class MyWallets extends StatefulWidget {
  const MyWallets({super.key});

  @override
  State<MyWallets> createState() => _MyWalletsState();
}

class _MyWalletsState extends State<MyWallets> {
  MyWalletsController myWalletsController = Get.put(MyWalletsController());

  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.getBgColor,
      child: GetBuilder<MyWalletsController>(builder: (myWalletsController) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(padding),
                      child: Column(
                        children: [
                          _buildui(),
                          SizedBox(
                            height: padding,
                          ),
                          _buildui1(size: constraints.maxWidth),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1000) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(padding),
                      child: Column(
                        children: [
                          _buildui(),
                          SizedBox(
                            height: padding,
                          ),
                          _buildui1(size: constraints.maxWidth),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(padding),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: _buildui(),
                          ),
                          SizedBox(
                            width: padding,
                          ),
                          Expanded(
                            flex: 5,
                            child: _buildui1(size: constraints.maxWidth),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        );
      }),
    );
  }

  Widget _buildui() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: notifire.getGry700_300Color),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    'Total Balance',
                    style: Typographyy.bodyLargeMedium
                        .copyWith(color: notifire.getGry500_600Color),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/images/dots-vertical29.svg",
                    height: 20,
                    width: 20,
                    color: notifire.getGry500_600Color,
                  ),
                ],
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "\$56,476.00 ",
                    style: Typographyy.heading2
                        .copyWith(color: notifire.getTextColor)),
                TextSpan(
                    text: "USD",
                    style: Typographyy.heading5
                        .copyWith(color: notifire.getGry500_600Color)),
              ])),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/heroicons-outline_trending-up.svg",
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2,05%",
                    style: Typographyy.bodyLargeMedium
                        .copyWith(color: const Color(0xff22C55E)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: notifire.getGry700_300Color,
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "January 29, 2022",
                    style: Typographyy.bodyLargeMedium
                        .copyWith(color: notifire.getGry500_600Color),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Card Lists",
          style: Typographyy.heading5.copyWith(color: notifire.getTextColor),
        ),
        const SizedBox(
          height: 16,
        ),
        cardss(
            price: "\$29,955.00",
            bgcolor: priMeryColor,
            textcolor: Colors.white),
        const SizedBox(
          height: 15,
        ),
        cardss(
            price: "\$29,955.00",
            bgcolor: notifire.getGry700_300Color,
            textcolor: notifire.getTextColor),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(56),
                    backgroundColor: notifire.getBgColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: priMeryColor)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Manage Card",
                    style: Typographyy.bodyLargeExtraBold
                        .copyWith(color: priMeryColor),
                  )),
            ),
          ],
        ),
      ],
    );
  }

  List cardList = [
    "assets/images/wallet1.svg",
    "assets/images/card-send1.svg",
    "assets/images/card-receive1.svg",
    "assets/images/receipt1.svg",
    "assets/images/shop-add.svg",
  ];

  List carName = [
    "Deposit",
    "Send",
    "Receive",
    "Invoicing",
    "Checkout",
  ];

  Widget _buildui1({required double size}) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                // height: 180,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(color: notifire.getGry700_300Color),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Quick Links",
                            style: Typographyy.bodyLargeExtraBold
                                .copyWith(color: notifire.getTextColor),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            "assets/images/chevron-down.svg",
                            height: 20,
                            width: 20,
                            color: notifire.getGry500_600Color,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // Wrap(
                      //   // spacing: 16,
                      //   // runSpacing: 16,
                      //   // runAlignment: WrapAlignment.center,
                      //   // crossAxisAlignment: WrapCrossAlignment.center,
                      //   children: [
                      //     _buildcard(icon: "assets/images/wallet1.svg", title: "Deposit"),
                      //     _buildcard(icon: "assets/images/card-send1.svg", title: "Send"),
                      //     _buildcard(icon: "assets/images/card-receive1.svg", title: "Receive"),
                      //     _buildcard(icon: "assets/images/receipt1.svg", title: "Invoicing"),
                      //     _buildcard(icon: "assets/images/shop-add.svg", title: "Checkout"),
                      //   ],
                      // ),

                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: carName.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: size < 600 ? 2 : 5,
                            mainAxisExtent: 100,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16),
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                switch (index) {
                                  case 0:
                                    addCurrency(width: size, context: context);
                                  case 1:
                                    sendMoney(width: size, context: context);
                                  case 2:
                                    review(width: size, context: context);
                                  case 3:
                                    invoicing(width: size, context: context);
                                  case 4:
                                    checkout(width: size, context: context);
                                }
                              },
                              child: _buildcard(
                                  icon: cardList[index],
                                  title: carName[index]));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last 30",
                          style: Typographyy.bodyXLargeExtraBold
                              .copyWith(color: notifire.getTextColor),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "days",
                          style: Typographyy.bodyXLargeExtraBold
                              .copyWith(color: notifire.getTextColor),
                        ),
                      ],
                    ),
                    const Flexible(
                        child: SizedBox(
                      width: 20,
                    )),
                    SvgPicture.asset(
                      "assets/images/chevron-down.svg",
                      height: 20,
                      width: 20,
                      color: notifire.getGry500_600Color,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 80,
                child: VerticalDivider(
                  color: notifire.getGry700_300Color,
                  width: 60,
                )),
            Expanded(
              child: SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Transactions',
                        style: Typographyy.bodyMediumMedium
                            .copyWith(color: notifire.getGry500_600Color),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '29',
                        style: Typographyy.bodyXLargeExtraBold
                            .copyWith(color: notifire.getTextColor),
                      ),
                    ],
                  )),
            ),
            size < 800
                ? const SizedBox()
                : SizedBox(
                    height: 80,
                    child: VerticalDivider(
                      color: notifire.getGry700_300Color,
                      width: 60,
                    )),
            size < 800
                ? const SizedBox()
                : Expanded(
                    child: SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total Spent',
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$10,654.00',
                              style: Typographyy.bodyXLargeExtraBold
                                  .copyWith(color: notifire.getTextColor),
                            ),
                          ],
                        )),
                  ),
            size < 800
                ? const SizedBox()
                : SizedBox(
                    height: 80,
                    child: VerticalDivider(
                      color: notifire.getGry700_300Color,
                      width: 60,
                    )),
            size < 800
                ? const SizedBox()
                : Expanded(
                    child: SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total Cashback',
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$2,456.00',
                              style: Typographyy.bodyXLargeExtraBold
                                  .copyWith(color: notifire.getTextColor),
                            ),
                          ],
                        )),
                  ),
          ],
        ),
        size < 800
            ? const SizedBox(
                height: 15,
              )
            : const SizedBox(),
        size < 800
            ? Row(
                children: [
                  Expanded(
                    child: SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total Spent',
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$10,654.00',
                              style: Typographyy.bodyXLargeExtraBold
                                  .copyWith(color: notifire.getTextColor),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: notifire.getGry700_300Color,
                        width: 60,
                      )),
                  Expanded(
                    child: SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total Cashback',
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '\$2,456.00',
                              style: Typographyy.bodyXLargeExtraBold
                                  .copyWith(color: notifire.getTextColor),
                            ),
                          ],
                        )),
                  ),
                ],
              )
            : const SizedBox(),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(24),
                // height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(color: notifire.getGry700_300Color),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Statistics",
                          style: Typographyy.heading6
                              .copyWith(color: notifire.getTextColor),
                        ),
                        const Spacer(),
                        size < 500
                            ? const SizedBox()
                            : Row(
                                children: [
                                  Switch(
                                    activeColor: priMeryColor,
                                    trackColor: myWalletsController.isMoonIn
                                        ? MaterialStatePropertyAll(priMeryColor)
                                        : MaterialStatePropertyAll(
                                            notifire.getGry700_300Color),
                                    activeTrackColor: priMeryColor,
                                    thumbColor:
                                        MaterialStatePropertyAll(whiteColor),
                                    value: myWalletsController.isMoonIn,
                                    onChanged: (value) {
                                      myWalletsController.setIsMoonIn(value);
                                    },
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Money In",
                                    style: Typographyy.bodySmallExtraBold
                                        .copyWith(color: notifire.getTextColor),
                                  ),
                                ],
                              ),
                        const Flexible(
                            child: SizedBox(
                          width: 24,
                        )),
                        size < 600
                            ? const SizedBox()
                            : Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Switch(
                                      activeColor: priMeryColor,
                                      trackColor: myWalletsController.isMoonOut
                                          ? MaterialStatePropertyAll(
                                              priMeryColor)
                                          : MaterialStatePropertyAll(
                                              notifire.getGry700_300Color),
                                      activeTrackColor: priMeryColor,
                                      thumbColor:
                                          MaterialStatePropertyAll(whiteColor),
                                      value: myWalletsController.isMoonOut,
                                      onChanged: (value) {
                                        myWalletsController.setIsMoonOut(value);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Money Out",
                                    style: Typographyy.bodySmallExtraBold
                                        .copyWith(color: notifire.getTextColor),
                                  ),
                                ],
                              ),
                        const SizedBox(
                          width: 30,
                        ),
                        PopupMenuButton(
                          tooltip: "",
                          offset: const Offset(0, 40),
                          color: notifire.getContainerColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onOpened: () {
                            myWalletsController.setMenuOpen(true);
                          },
                          onCanceled: () {
                            myWalletsController.setMenuOpen(false);
                          },
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                  padding: const EdgeInsets.all(0),
                                  child: SizedBox(
                                    height: 70,
                                    width: 100,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: myWalletsController
                                          .listOfMonths.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    myWalletsController
                                                        .setListValue(index);
                                                    Get.back();
                                                  },
                                                  child: Text(
                                                    myWalletsController
                                                        .listOfMonths[index],
                                                    style: Typographyy
                                                        .bodySmallSemiBold
                                                        .copyWith(
                                                            color: notifire
                                                                .getTextColor),
                                                  )),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )),
                            ];
                          },
                          child: Container(
                            height: 34,
                            width: 121,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: notifire.getGry50_800Color,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  myWalletsController.listOfMonths[
                                          myWalletsController.selectListIteam]
                                      .toString(),
                                  style: Typographyy.bodySmallSemiBold
                                      .copyWith(color: notifire.getTextColor),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset(
                                    myWalletsController.isMenuOpen
                                        ? "assets/images/chevron-up.svg"
                                        : "assets/images/chevron-down.svg",
                                    color: myWalletsController.isMenuOpen
                                        ? priMeryColor
                                        : notifire.getGry500_600Color),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SfCartesianChart(
                            series: <CartesianSeries<dynamic, int>>[
                              // Adjusted type here
                              ColumnSeries<ChartData, int>(
                                // Adjusted type here
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                                color: priMeryColor,
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        size < 800
            ? Column(
                children: [
                  _buidCurrency(),
                  const SizedBox(
                    height: 24,
                  ),
                  _buidConversion(),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: _buidCurrency(),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: _buidConversion(),
                  ),
                ],
              )
      ],
    );
  }

  Widget _buidCurrency() {
    return Container(
      // height: 227,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: notifire.getGry700_300Color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Currency",
            style: Typographyy.heading6.copyWith(color: notifire.getTextColor),
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/images/in.svg",
                )),
            trailing: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "56,476.00",
                  style: Typographyy.bodyLargeExtraBold
                      .copyWith(color: notifire.getTextColor)),
              TextSpan(
                  text: " USD",
                  style: Typographyy.bodyLargeMedium
                      .copyWith(color: notifire.getGry500_600Color)),
            ])),
            title: Text(
              "IND",
              style: Typographyy.bodyLargeExtraBold
                  .copyWith(color: notifire.getTextColor),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/images/us.svg",
                )),
            trailing: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "29,955.00",
                  style: Typographyy.bodyLargeExtraBold
                      .copyWith(color: notifire.getTextColor)),
              TextSpan(
                  text: " USD",
                  style: Typographyy.bodyLargeMedium
                      .copyWith(color: notifire.getGry500_600Color)),
            ])),
            title: Text(
              "USD",
              style: Typographyy.bodyLargeExtraBold
                  .copyWith(color: notifire.getTextColor),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  "assets/images/fr.svg",
                )),
            trailing: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "56,476.00",
                  style: Typographyy.bodyLargeExtraBold
                      .copyWith(color: notifire.getTextColor)),
              TextSpan(
                  text: " USD",
                  style: Typographyy.bodyLargeMedium
                      .copyWith(color: notifire.getGry500_600Color)),
            ])),
            title: Text(
              "GBP",
              style: Typographyy.bodyLargeExtraBold
                  .copyWith(color: notifire.getTextColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buidConversion() {
    return Container(
      // height: 227,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: notifire.getGry700_300Color),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Conversion",
          style: Typographyy.heading6.copyWith(color: notifire.getTextColor),
        ),
        const SizedBox(
          height: 24,
        ),
        _buildConversion(),
        const SizedBox(
          height: 20,
        ),
        _buildConversion1(),
      ]),
    );
  }

  Widget _buildConversion() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: PopupMenuButton(
            onOpened: () {
              myWalletsController.setMenuOpen1(true);
            },
            onCanceled: () {
              myWalletsController.setMenuOpen1(false);
            },
            tooltip: "",
            offset: const Offset(0, 40),
            constraints: const BoxConstraints(maxWidth: 60, minWidth: 60),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: notifire.getContainerColor,
            child: Container(
              height: 56,
              // width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: notifire.getGry700_300Color)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    myWalletsController
                        .menuIteam[myWalletsController.selectMenuIteam],
                    style: Typographyy.bodyMediumExtraBold
                        .copyWith(color: notifire.getTextColor),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    myWalletsController.isMenuOpen1
                        ? "assets/images/chevron-up.svg"
                        : "assets/images/chevron-down.svg",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    padding: const EdgeInsets.all(0),
                    child: SizedBox(
                      height: 100,
                      width: 50,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: myWalletsController.menuIteam.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              InkWell(
                                  onTap: () {
                                    myWalletsController
                                        .setSelectMenuIteam(index);
                                    Get.back();
                                  },
                                  child: Text(
                                    myWalletsController.menuIteam[index],
                                    style: Typographyy.bodyMediumExtraBold
                                        .copyWith(color: notifire.getTextColor),
                                  )),
                            ],
                          );
                        },
                      ),
                    ))
              ];
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: notifire.getGry700_300Color)),
            child: TextField(
              style: Typographyy.bodyLargeMedium
                  .copyWith(color: notifire.getTextColor),
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: InputBorder.none),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildConversion1() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: PopupMenuButton(
            constraints: const BoxConstraints(maxWidth: 60, minWidth: 60),
            onOpened: () {
              myWalletsController.setMenuOpen2(true);
            },
            onCanceled: () {
              myWalletsController.setMenuOpen2(false);
            },
            tooltip: "",
            offset: const Offset(0, 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: notifire.getContainerColor,
            child: Container(
              height: 56,
              // width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: notifire.getGry700_300Color)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    myWalletsController
                        .menuIteam[myWalletsController.selectMenuIteam1],
                    style: Typographyy.bodyMediumExtraBold
                        .copyWith(color: notifire.getTextColor),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    myWalletsController.isMenuOpen2
                        ? "assets/images/chevron-up.svg"
                        : "assets/images/chevron-down.svg",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    padding: const EdgeInsets.all(0),
                    child: SizedBox(
                      height: 100,
                      width: 50,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: myWalletsController.menuIteam.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              InkWell(
                                  onTap: () {
                                    myWalletsController
                                        .setSelectMenuIteam1(index);
                                    Get.back();
                                  },
                                  child: Text(
                                    myWalletsController.menuIteam[index],
                                    style: Typographyy.bodyMediumExtraBold
                                        .copyWith(color: notifire.getTextColor),
                                  )),
                            ],
                          );
                        },
                      ),
                    ))
              ];
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: notifire.getGry700_300Color)),
            child: TextField(
              style: Typographyy.bodyLargeMedium
                  .copyWith(color: notifire.getTextColor),
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: InputBorder.none),
            ),
          ),
        )
      ],
    );
  }

  List<ChartData> chartData = [
    ChartData(1, 35, 0),
    ChartData(2, 23, 0),
    ChartData(3, 54, 0),
    ChartData(4, 125, 0),
    ChartData(5, 40, 0),
    ChartData(6, 120, 0),
    ChartData(7, 70, 0),
    ChartData(8, 80, 0),
    ChartData(9, 30, 0),
    ChartData(10, 70, 0),
  ];

  Widget _buildcard({required String icon, required String title}) {
    return Container(
      height: 92,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: notifire.getGry700_300Color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: notifire.getGry50_800Color,
            child: SvgPicture.asset(
              icon,
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: Typographyy.bodySmallSemiBold
                .copyWith(color: notifire.getTextColor),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}

Future<void> addCurrency({required double width, context}) async {
  return showDialog<void>(
    context: context, // user must tap button!
    builder: (BuildContext context) {
      return GetBuilder<MyWalletsController>(builder: (myWalletsController) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 8),
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: notifire.getBgColor,
          );
        });
      });
    },
  );
}

Future<void> sendMoney({required double width, context}) async {
  return showDialog<void>(
    context: context, // user must tap button!
    builder: (BuildContext context) {
      return GetBuilder<MyWalletsController>(builder: (myWalletsController) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: notifire.getBgColor,
        );
      });
    },
  );
}

Widget buildPayment(context) {
  return GetBuilder<MyWalletsController>(builder: (myWalletsController) {
    return SizedBox(
        height: 220,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myWalletsController.paymentList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    myWalletsController.setPayment(index);
                  },
                  child: Container(
                    height: 64,
                    // width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: myWalletsController.selectPayment == index
                              ? priMeryColor
                              : notifire.getGry700_300Color),
                    ),
                    child: Center(
                      child: ListTile(
                        dense: true,
                        title: Text(
                          myWalletsController.paymentName[index],
                          style: Typographyy.bodySmallExtraBold
                              .copyWith(color: notifire.getTextColor),
                        ),
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                                myWalletsController.paymentList[index])),
                        subtitle: Text(
                          "\$29,${index}5${index + 2}",
                          style: Typographyy.bodyXSmallMedium
                              .copyWith(color: notifire.getGry500_600Color),
                        ),
                        trailing: Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStatePropertyAll(priMeryColor),
                            value: myWalletsController.selectPayment == index
                                ? true
                                : false,
                            shape: const CircleBorder(),
                            side:
                                BorderSide(color: notifire.getGry700_300Color),
                            onChanged: (bool? value) {
                              myWalletsController.setPayment(index);
                              // setState(() {
                              //   myWalletsController.setIsCheckBox5(value);
                              // });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            );
          },
        ));
  });
}

Widget buildPayment1(context) {
  return GetBuilder<DashBordeController>(builder: (dashBordeController) {
    return SizedBox(
      height: 220,
      child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      // width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius),
                          color: priMeryColor,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/Group.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
              Container(
                // width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/Chips.svg",
                                  height: 22,
                                  width: 22,
                                ),
                                SvgPicture.asset(
                                  "assets/images/Amazon.svg",
                                  height: 15,
                                  width: 40,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Balance",
                                  style: Typographyy.bodySmallMedium.copyWith(
                                      color: whiteColor.withOpacity(0.6)),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    dashBordeController.setistextishide(
                                        dashBordeController.istextishide =
                                            !dashBordeController.istextishide);
                                  },
                                  child: SvgPicture.asset(
                                    dashBordeController.istextishide
                                        ? "assets/images/eye.svg"
                                        : "assets/images/eye-off.svg",
                                    height: 12,
                                    width: 12,
                                    color: whiteColor.withOpacity(0.6),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                        dashBordeController.istextishide
                                            ? "\$29,955"
                                            : "********",
                                        style: Typographyy.bodyMediumMedium
                                            .copyWith(
                                                color: Colors.white,
                                                fontSize: dashBordeController
                                                        .istextishide
                                                    ? 15
                                                    : 15),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1)),
                                SvgPicture.asset(
                                  "assets/images/Circle12.svg",
                                  width: 40,
                                  height: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 68,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: notifire.getGry700_300Color),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter amount",
                        style: Typographyy.bodySmallMedium
                            .copyWith(color: notifire.getGry500_600Color),
                      ),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          style: Typographyy.heading6
                              .copyWith(color: notifire.getTextColor),
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Center(
                                        child: SvgPicture.asset(
                                      "assets/images/in.svg",
                                      height: 18,
                                      width: 18,
                                    ))),
                              ),
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  });
}

Future<void> review({required double width, context}) async {
  return showDialog<void>(
    context: context, // user must tap button!
    builder: (BuildContext context) {
      return GetBuilder<MyWalletsController>(builder: (myWalletsController) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 8),
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: notifire.getBgColor,
        );
      });
    },
  );
}

Future<void> checkout({required double width, context}) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return GetBuilder<MyWalletsController>(builder: (myWalletsController) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 8),
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: notifire.getBgColor,
          content: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                // height: 200,
                width: width < 600 ? Get.width : 600,
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              "assets/images/plus.svg",
                              height: 22,
                              width: 22,
                              color: priMeryColor,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Review detail of your request",
                      style: Typographyy.heading4
                          .copyWith(color: notifire.getTextColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
                      style: Typographyy.bodySmallMedium.copyWith(
                          color: notifire.getGry500_600Color,
                          wordSpacing: 1.4,
                          height: 1.4),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Table(
                      children: [
                        TableRow(children: [
                          Text(
                            "Transfer details",
                            style: Typographyy.bodyMediumExtraBold
                                .copyWith(color: notifire.getTextColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                "assets/images/tabler_edit.svg",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Edit",
                                style: Typographyy.bodyMediumMedium
                                    .copyWith(color: priMeryColor),
                              )
                            ],
                          ),
                        ]),
                        const TableRow(children: [
                          SizedBox(
                            height: 24,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "You send",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "\$2,955.00",
                                  style: Typographyy.bodyMediumExtraBold
                                      .copyWith(color: priMeryColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Total fees",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "-\$29.00",
                                  style: Typographyy.bodyMediumMedium
                                      .copyWith(color: notifire.getTextColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Amount we’ll convert",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "\$2,926.00",
                                  style: Typographyy.bodyMediumExtraBold
                                      .copyWith(color: notifire.getTextColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Guarenteed rate (48 hours)",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "\$0.2950",
                                  style: Typographyy.bodyMediumMedium
                                      .copyWith(color: notifire.getTextColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Should arrive",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "by Jan 29",
                                  style: Typographyy.bodyMediumMedium
                                      .copyWith(color: notifire.getTextColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Divider(
                            height: 48,
                            color: notifire.getGry700_300Color,
                          ),
                          Divider(
                            height: 48,
                            color: notifire.getGry700_300Color,
                          ),
                        ]),
                        TableRow(children: [
                          Text(
                            "Recipient",
                            style: Typographyy.bodyMediumExtraBold
                                .copyWith(color: notifire.getTextColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                "assets/images/tabler_edit.svg",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Edit",
                                style: Typographyy.bodyMediumMedium
                                    .copyWith(color: priMeryColor),
                              )
                            ],
                          ),
                        ]),
                        const TableRow(children: [
                          SizedBox(
                            height: 24,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Name",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Elon Musk",
                                  style: Typographyy.bodyMediumExtraBold
                                      .copyWith(color: notifire.getTextColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Email",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                    child: Text(
                                  "Elonmusk29@gmail.com",
                                  style: Typographyy.bodyMediumMedium.copyWith(
                                      color: notifire.getTextColor,
                                      overflow: TextOverflow.ellipsis),
                                )),
                              ],
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Account number",
                              style: Typographyy.bodyMediumMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "AM29295504729",
                                  style: Typographyy.bodyMediumMedium
                                      .copyWith(color: notifire.getTextColor),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  fixedSize: const Size.fromHeight(48)),
                              onPressed: () {
                                myWalletsController.offIsLoading(
                                    context, width);
                              },
                              child: Text(
                                "Send Request",
                                style: Typographyy.bodyMediumExtraBold
                                    .copyWith(color: Colors.white),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              myWalletsController.isLoading
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
            ],
          ),
        );
      });
    },
  );
}

Future<void> invoicing({required double width, context}) async {
  return showDialog<void>(
    context: context, // user must tap button!
    builder: (BuildContext context) {
      return GetBuilder<MyWalletsController>(builder: (myWalletsController) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 8),
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: notifire.getBgColor,
        );
      });
    },
  );
}
