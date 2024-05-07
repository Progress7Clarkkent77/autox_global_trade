import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../ConstData/colorfile.dart';
import '../../../../ConstData/colorprovider.dart';
import '../../../../ConstData/typography.dart';
import '../../../../controller/buy_crypto_bank_deposit.dart';

class BStep1 extends StatefulWidget {
  const BStep1({super.key});

  @override
  State<BStep1> createState() => _BStep1State();
}

class _BStep1State extends State<BStep1> {
  ColorNotifire notifire = ColorNotifire();

  List price = [
    "100",
    "200",
    "300",
    "400",
  ];
  BuyCryptoBankDeposit buyCryptoBankDeposit = Get.put(BuyCryptoBankDeposit());

  @override
  void initState() {
    super.initState();
    buyCryptoBankDeposit.priceController.text = "295";
  }

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<BuyCryptoBankDeposit>(builder: (buyCryptoBankDeposit) {
      return LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                // height: 400,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Text(
                          "Select Currency And Payment Method",
                          style: Typographyy.heading6
                              .copyWith(color: notifire.getTextColor),
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    constraints.maxWidth < 600
                        ? Column(
                            children: [
                              _buildDrop1(),
                              const SizedBox(
                                height: 15,
                              ),
                              _buildDrop2()
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(child: _buildDrop1()),
                              const SizedBox(
                                width: 24,
                              ),
                              Expanded(child: _buildDrop2()),
                            ],
                          ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Amount",
                            style: Typographyy.bodyLargeSemiBold
                                .copyWith(color: notifire.getTextColor)),
                      ],
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
                              if (buyCryptoBankDeposit
                                  .priceController.text.isEmpty) {
                                buyCryptoBankDeposit.setPriceSelect(-1);
                              }
                            },
                            controller: buyCryptoBankDeposit.priceController,
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
                      // width: Get.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              buyCryptoBankDeposit.setPriceSelect(index);
                              setState(() {
                                buyCryptoBankDeposit.priceController.text =
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
                                    color: buyCryptoBankDeposit.priceSelect ==
                                            index
                                        ? priMeryColor
                                        : notifire.getGry700_300Color),
                              ),
                              child: Center(
                                  child: Text(price[index],
                                      style: Typographyy.bodyMediumMedium
                                          .copyWith(
                                              color: buyCryptoBankDeposit
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
                      height: 15,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fixedSize: const Size.fromHeight(42),
                          backgroundColor: priMeryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            buyCryptoBankDeposit.selectStep++;
                          });
                          buyCryptoBankDeposit
                              .setSelectStep(buyCryptoBankDeposit.selectStep);
                          buyCryptoBankDeposit.selectIndex.add(0);
                          buyCryptoBankDeposit.scrollController.animateTo(240,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "Continue",
                          style: Typographyy.bodyMediumSemiBold
                              .copyWith(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ],
        );
      });
    });
  }

  Widget _buildDrop1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Currency",
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getTextColor),
        ),
        const SizedBox(
          height: 8,
        ),
        PopupMenuButton(
          color: notifire.getContainerColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          tooltip: "",
          onOpened: () {
            buyCryptoBankDeposit.setIsDrop1(true);
          },
          onCanceled: () {
            buyCryptoBankDeposit.setIsDrop1(false);
          },
          offset: const Offset(0, 50),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: notifire.getGry700_300Color),
                  ),
                  child: Row(
                    children: [
                      Text(
                        buyCryptoBankDeposit
                            .dropdown1[buyCryptoBankDeposit.selectDrop1],
                        style: Typographyy.bodyMediumMedium
                            .copyWith(color: notifire.getGry500_600Color),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        buyCryptoBankDeposit.isDrop1
                            ? "assets/images/chevron-up.svg"
                            : "assets/images/chevron-down.svg",
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: buyCryptoBankDeposit.dropdown1.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  buyCryptoBankDeposit.setSelectDrop1(index);
                                  Get.back();
                                },
                                child: Text(
                                  buyCryptoBankDeposit.dropdown1[index],
                                  style: Typographyy.bodyMediumMedium.copyWith(
                                      color: notifire.getGry500_600Color),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      },
                    ),
                  ))
            ];
          },
        ),
      ],
    );
  }

  Widget _buildDrop2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Payment",
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getTextColor),
        ),
        const SizedBox(
          height: 8,
        ),
        PopupMenuButton(
          color: notifire.getContainerColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          tooltip: "",
          onOpened: () {
            buyCryptoBankDeposit.setIsDrop2(true);
          },
          onCanceled: () {
            buyCryptoBankDeposit.setIsDrop2(false);
          },
          offset: const Offset(0, 50),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: notifire.getGry700_300Color),
                  ),
                  child: Row(
                    children: [
                      Text(
                        buyCryptoBankDeposit
                            .dropdown2[buyCryptoBankDeposit.selectDrop2],
                        style: Typographyy.bodyMediumMedium
                            .copyWith(color: notifire.getGry500_600Color),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        buyCryptoBankDeposit.isDrop2
                            ? "assets/images/chevron-up.svg"
                            : "assets/images/chevron-down.svg",
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: buyCryptoBankDeposit.dropdown2.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  buyCryptoBankDeposit.setSelectDrop2(index);
                                  Get.back();
                                },
                                child: Text(
                                  buyCryptoBankDeposit.dropdown2[index],
                                  style: Typographyy.bodyMediumMedium.copyWith(
                                      color: notifire.getGry500_600Color),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        );
                      },
                    ),
                  ))
            ];
          },
        ),
      ],
    );
  }
}
