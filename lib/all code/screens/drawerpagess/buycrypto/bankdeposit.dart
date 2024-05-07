// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../ConstData/colorfile.dart';
import '../../../ConstData/colorprovider.dart';
import '../../../ConstData/typography.dart';
import '../../../controller/buy_crypto_bank_deposit.dart';

class BankDeposit extends StatefulWidget {
  const BankDeposit({super.key});

  @override
  State<BankDeposit> createState() => _BankDepositState();
}

class _BankDepositState extends State<BankDeposit> {
  List stepName = [
    "Select Currency",
    "Important notes",
    "Payment Details",
  ];

  ColorNotifire notifire = ColorNotifire();
  BuyCryptoBankDeposit buyCryptoBankDeposit = Get.put(BuyCryptoBankDeposit());

  bool isbuycrypto = false;

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<BuyCryptoBankDeposit>(builder: (buyCryptoBankDeposit) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: notifire.getBgColor,
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  controller: buyCryptoBankDeposit.scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // color: Colors.red,
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: stepName.length,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    buyCryptoBankDeposit.setSelectStep(index);
                                  },
                                  child: Container(
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: buyCryptoBankDeposit.selectStep ==
                                              index
                                          ? notifire.getGry50_800Color
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 32,
                                          margin: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: buyCryptoBankDeposit
                                                              .selectStep ==
                                                          index
                                                      ? priMeryColor
                                                      : Colors.transparent),
                                              color: buyCryptoBankDeposit
                                                      .selectIndex
                                                      .contains(index)
                                                  ? priMeryColor
                                                  : Colors.transparent
                                              // color: buyCryptoCreditCard.selectStep == index? priMeryColor : notifire.getContainerColor,
                                              ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              buyCryptoBankDeposit.selectIndex
                                                      .contains(index)
                                                  ? SvgPicture.asset(
                                                      "assets/images/check29.svg",
                                                      height: 20,
                                                      width: 20,
                                                      color: Colors.white,
                                                    )
                                                  : Text(
                                                      "${index + 1}".toString(),
                                                      style: Typographyy
                                                          .bodyMediumMedium
                                                          .copyWith(
                                                              color: notifire
                                                                  .getTextColor),
                                                    ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          stepName[index],
                                          style: Typographyy.bodyMediumExtraBold
                                              .copyWith(
                                                  color: notifire.getTextColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                index == 2
                                    ? SizedBox(
                                        width: constraints.maxWidth < 600
                                            ? 300
                                            : 0,
                                      )
                                    : SizedBox(
                                        width: 50,
                                        child: Divider(
                                            height: 20,
                                            color:
                                                notifire.getGry700_300Color)),
                                const SizedBox(
                                  width: 8,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buyCryptoBankDeposit.step[buyCryptoBankDeposit.selectStep],
              ],
            ),
          );
        }),
      );
    });
  }
}
