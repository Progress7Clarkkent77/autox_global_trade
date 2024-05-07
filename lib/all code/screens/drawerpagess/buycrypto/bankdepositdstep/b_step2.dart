import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../ConstData/colorfile.dart';
import '../../../../ConstData/colorprovider.dart';
import '../../../../ConstData/typography.dart';
import '../../../../controller/buy_crypto_bank_deposit.dart';

class BStep2 extends StatefulWidget {
  const BStep2({super.key});

  @override
  State<BStep2> createState() => _BStep2State();
}

class _BStep2State extends State<BStep2> {
  ColorNotifire notifire = ColorNotifire();

  BuyCryptoBankDeposit buyCryptoBankDeposit = Get.put(BuyCryptoBankDeposit());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<BuyCryptoBankDeposit>(builder: (buyCryptoBankDeposit) {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Important Notes",
                    style: Typographyy.heading6
                        .copyWith(color: notifire.getTextColor),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                      style: Typographyy.bodyMediumMedium
                          .copyWith(color: notifire.getGry500_600Color)),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Veum Cecilia",
                    style: Typographyy.bodyLargeExtraBold
                        .copyWith(color: notifire.getTextColor),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been ",
                      style: Typographyy.bodyMediumMedium
                          .copyWith(color: notifire.getGry500_600Color)),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: notifire.getGry700_800Color,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text("aME29et5529",
                                  style: Typographyy.bodyMediumMedium
                                      .copyWith(color: notifire.getTextColor))),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                            buyCryptoBankDeposit.selectIndex.add(1);
                            buyCryptoBankDeposit.scrollController.animateTo(480,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "Continue",
                            style: Typographyy.bodyMediumSemiBold
                                .copyWith(color: Colors.white),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
