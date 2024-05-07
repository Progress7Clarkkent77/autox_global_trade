// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../ConstData/colorfile.dart';
import '../../../../ConstData/colorprovider.dart';
import '../../../../ConstData/typography.dart';
import '../../../../controller/buy_crypto_creditcard_controller.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  List price = [
    "100",
    "200",
    "300",
    "400",
  ];

  @override
  void initState() {
    super.initState();
    buyCryptoCreditCard.priceController.text = "295";
  }

  ColorNotifire notifire = ColorNotifire();
  BuyCryptoCreditCard buyCryptoCreditCard = Get.put(BuyCryptoCreditCard());
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of(context, listen: true);
    return GetBuilder<BuyCryptoCreditCard>(builder: (buyCryptoCreditCard) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              height: 400,
              width: 600,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: notifire.getGry50_800Color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            buyCryptoCreditCard.selectIndex.remove(1);
                            setState(() {
                              buyCryptoCreditCard.selectStep--;
                            });
                            buyCryptoCreditCard
                                .setSelectStep(buyCryptoCreditCard.selectStep);
                            buyCryptoCreditCard.scrollController.jumpTo(0);
                          },
                          child: SvgPicture.asset(
                            "assets/images/arrow-left-small.svg",
                            height: 20,
                            width: 20,
                            color: notifire.getGry500_600Color,
                          )),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Enter Amount",
                        style: Typographyy.heading5
                            .copyWith(color: notifire.getTextColor),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text("Buying Bitcoin",
                              style: Typographyy.bodyMediumRegular.copyWith(
                                  color: notifire.getGry500_600Color)),
                          const SizedBox(
                            width: 8,
                          ),
                          const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage("assets/images/btc.png"),
                              radius: 15),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "\$",
                          style: Typographyy.heading4
                              .copyWith(color: notifire.getTextColor),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        // height: 50,
                        width: 120,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (buyCryptoCreditCard
                                .priceController.text.isEmpty) {
                              buyCryptoCreditCard.setPriceSelect(-1);
                            }
                          },
                          controller: buyCryptoCreditCard.priceController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: Typographyy.heading1
                              .copyWith(color: notifire.getTextColor),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "20 BTC",
                    style: Typographyy.bodyLargeExtraBold
                        .copyWith(color: notifire.getGry500_600Color),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            buyCryptoCreditCard.setPriceSelect(index);
                            setState(() {
                              buyCryptoCreditCard.priceController.text =
                                  price[index];
                            });
                          },
                          child: Container(
                            height: 42,
                            width: 80,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color:
                                      buyCryptoCreditCard.priceSelect == index
                                          ? priMeryColor
                                          : notifire.getGry700_300Color),
                            ),
                            child: Center(
                                child: Text(price[index],
                                    style: Typographyy.bodyMediumMedium
                                        .copyWith(
                                            color: buyCryptoCreditCard
                                                        .priceSelect ==
                                                    index
                                                ? priMeryColor
                                                : notifire.getTextColor))),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: priMeryColor,
                              fixedSize: const Size.fromHeight(42),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            onPressed: () {
                              setState(() {
                                buyCryptoCreditCard.selectStep++;
                              });
                              buyCryptoCreditCard.setSelectStep(
                                  buyCryptoCreditCard.selectStep);
                              buyCryptoCreditCard.selectIndex.add(1);
                              buyCryptoCreditCard.scrollController.animateTo(
                                  450,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeIn);
                            },
                            child: Text(
                              "Continue",
                              style: Typographyy.bodyLargeExtraBold
                                  .copyWith(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
