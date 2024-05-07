// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../ConstData/colorfile.dart';
import '../../../ConstData/colorprovider.dart';
import '../../../ConstData/typography.dart';
import '../../../controller/sellcrypto_controller.dart';

class SellCrypto extends StatefulWidget {
  const SellCrypto({super.key});

  @override
  State<SellCrypto> createState() => _SellCryptoState();
}

class _SellCryptoState extends State<SellCrypto> {

  List stepName = [
    "Select Crypto",
    "Enter Amount",
    "Confirm ",
  ];

  ColorNotifire notifire = ColorNotifire();
  SellCryptoController sellCryptoController = Get.put(SellCryptoController());

  bool isBuyCrypto = false;

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<SellCryptoController>(
        builder: (sellCryptoController) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: notifire.getBgColor,
            child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    scrollDirection:  Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SingleChildScrollView(
                          controller: sellCryptoController.scrollController,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              // constraints.maxWidth<800?  const SizedBox() :  SizedBox(width: Get.width*0.2,),
                              SizedBox(
                                // color: Colors.red,
                                height: 60,
                                // width: Get.width,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: stepName.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            sellCryptoController.setSelectStep(index);
                                          },
                                          child: Container(
                                            width: 160,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: sellCryptoController.selectStep == index ? notifire.getGry50_800Color : Colors.transparent,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 32,
                                                  width: 32,
                                                  margin: const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(color: sellCryptoController.selectStep == index ? priMeryColor : Colors.transparent),
                                                      color: sellCryptoController.selectIndex.contains(index)?priMeryColor : Colors.transparent
                                                    // color: buyCryptoCreditCard.selectStep == index? priMeryColor : notifire.getContainerColor,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [sellCryptoController.selectIndex.contains(index)? SvgPicture.asset("assets/images/check29.svg",height: 20,width: 20,color: Colors.white,) :  Text("${index+1}".toString(), style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getTextColor),),],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(stepName[index], style: Typographyy.bodyMediumExtraBold.copyWith(color: notifire.getTextColor),),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        index == 2 ?  SizedBox(width: constraints.maxWidth<600? 300 :0,) : SizedBox(
                                            width: 50,
                                            child: Divider(
                                                height: 20,
                                                color: notifire.getGry700_300Color)),
                                        const SizedBox(width: 8,),
                                      ],
                                    );
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        sellCryptoController.step[sellCryptoController.selectStep],
                      ],
                    ),
                  );
                }
            ),
          );
        });
  }
}
