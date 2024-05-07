// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../ConstData/colorfile.dart';
import '../../../../ConstData/colorprovider.dart';
import '../../../../ConstData/typography.dart';
import '../../../../controller/buy_crypto_creditcard_controller.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  bool isSave = false;
  ColorNotifire notifire = ColorNotifire();

  BuyCryptoCreditCard buyCryptoCreditCard = Get.put(BuyCryptoCreditCard());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of(context, listen: true);
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: 600,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: notifire.getGry50_800Color),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                buyCryptoCreditCard.selectIndex.remove(2);
                                setState(() {
                                  buyCryptoCreditCard.selectStep--;
                                });

                                buyCryptoCreditCard.setSelectStep(
                                    buyCryptoCreditCard.selectStep);
                                buyCryptoCreditCard.scrollController
                                    .jumpTo(220);
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
                            "Payment Info",
                            style: Typographyy.heading5
                                .copyWith(color: notifire.getTextColor),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text("Buying Bitcoin",
                                  style: Typographyy.bodyMediumRegular.copyWith(
                                      color: notifire.getGry500_600Color,
                                      overflow: TextOverflow.ellipsis)),
                              constraints.maxWidth < 600
                                  ? const SizedBox()
                                  : const SizedBox(
                                      width: 8,
                                    ),
                              constraints.maxWidth < 600
                                  ? const SizedBox()
                                  : const CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      backgroundImage:
                                          AssetImage("assets/images/btc.png"),
                                      radius: 15),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // height: 100,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: notifire.getGry700_300Color,
                              ),
                              child: constraints.maxWidth < 600
                                  ? Column(
                                      children: [
                                        _listTile(),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        _listTile1()
                                      ],
                                    )
                                  : Row(
                                      children: [
                                        Expanded(
                                          child: _listTile(),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                          child: _listTile1(),
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
                      Row(
                        children: [
                          Text(
                            "Credit Card",
                            style: Typographyy.heading5
                                .copyWith(color: notifire.getTextColor),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Ask Mastercard Logo.png",
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SvgPicture.asset("assets/images/Vector33.svg",
                                  height: 13,
                                  width: 13,
                                  color: notifire.getTextColor),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      _buildTextFiled(
                          title: "Card Number",
                          hintText: "XXXX XXXX XXXX XXXX"),
                      const SizedBox(
                        height: 24,
                      ),
                      _buildTextFiled(
                          title: "Card Holder", hintText: "Enter Name"),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: _buildTextFiled(
                                  title: "Expiration Date",
                                  hintText: "MM / YY")),
                          constraints.maxWidth < 600
                              ? const SizedBox()
                              : const SizedBox(
                                  width: 15,
                                ),
                          constraints.maxWidth < 600
                              ? const SizedBox()
                              : Expanded(
                                  child: _buildTextFiled(
                                      title: "CVC", hintText: "CVC")),
                        ],
                      ),
                      constraints.maxWidth < 600
                          ? const SizedBox(
                              height: 24,
                            )
                          : const SizedBox(),
                      constraints.maxWidth < 600
                          ? _buildTextFiled(title: "CVC", hintText: "CVC")
                          : const SizedBox(),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            activeColor: priMeryColor,
                            side:
                                BorderSide(color: notifire.getGry700_300Color),
                            value: isSave,
                            onChanged: (value) {
                              setState(() {
                                isSave = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Save Card",
                            style: Typographyy.bodyMediumMedium
                                .copyWith(color: notifire.getTextColor),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: priMeryColor,
                                  fixedSize: const Size.fromHeight(44),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              onPressed: () {
                                setState(() {
                                  buyCryptoCreditCard.selectStep++;
                                });
                                buyCryptoCreditCard.setSelectStep(
                                    buyCryptoCreditCard.selectStep);
                                buyCryptoCreditCard.selectIndex.add(2);
                                buyCryptoCreditCard.scrollController.animateTo(
                                    675,
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.easeIn);
                              },
                              child: Text(
                                "Continue",
                                style: Typographyy.bodyMediumSemiBold
                                    .copyWith(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    });
  }

  Widget _buildTextFiled({required String title, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getGry500_600Color),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          style: Typographyy.bodyMediumSemiBold
              .copyWith(color: notifire.getTextColor),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: notifire.getGry700_300Color)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: notifire.getGry700_300Color)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: notifire.getGry700_300Color)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: notifire.getGry700_300Color)),
            hintText: hintText,
            hintStyle: Typographyy.bodyMediumSemiBold
                .copyWith(color: notifire.getGry500_600Color),
          ),
        ),
      ],
    );
  }

  Widget _listTile() {
    return ListTile(
      dense: true,
      leading: CircleAvatar(
          backgroundColor: Colors.deepPurpleAccent,
          child: SvgPicture.asset(
            "assets/images/wallet.svg",
            height: 20,
            width: 20,
            color: Colors.white,
          )),
      contentPadding: const EdgeInsets.all(0),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          "Send",
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getGry500_600Color),
        ),
      ),
      subtitle: Text(
        "\$29.00",
        style: Typographyy.bodyLargeSemiBold
            .copyWith(color: notifire.getTextColor),
      ),
    );
  }

  Widget _listTile1() {
    return ListTile(
      dense: true,
      leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: SvgPicture.asset(
            "assets/images/wallet.svg",
            height: 20,
            width: 20,
            color: Colors.white,
          )),
      contentPadding: const EdgeInsets.all(0),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          "Get",
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getGry500_600Color),
        ),
      ),
      subtitle: Text(
        "0.2955 BTC",
        style: Typographyy.bodyLargeSemiBold.copyWith(
            color: notifire.getTextColor, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
