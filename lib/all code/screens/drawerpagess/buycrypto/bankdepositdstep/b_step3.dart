// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../ConstData/colorprovider.dart';
import '../../../../ConstData/typography.dart';
import '../../../../controller/buy_crypto_bank_deposit.dart';
import '../../../../controller/drawercontroller.dart';

class BStep3 extends StatefulWidget {
  const BStep3({super.key});

  @override
  State<BStep3> createState() => _BStep3State();
}

class _BStep3State extends State<BStep3> {
  ColorNotifire notifire = ColorNotifire();
  BuyCryptoBankDeposit buyCryptoBankDeposit = Get.put(BuyCryptoBankDeposit());
  DrawerControllerr contoller = Get.put(DrawerControllerr());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<BuyCryptoBankDeposit>(builder: (buyCryptoBankDeposit) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              width: 600,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: notifire.getGry50_800Color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Details",
                      style: Typographyy.heading6
                          .copyWith(color: notifire.getTextColor)),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Bank Account",
                    style: Typographyy.bodyMediumMedium
                        .copyWith(color: notifire.getTextColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  _buildRow1(title: "Account Name", name: "Elon Musk"),
                  Divider(
                    height: 40,
                    color: notifire.getGry700_300Color,
                  ),
                  _buildRow1(title: "Account Number", name: "2997145447"),
                  Divider(
                    height: 40,
                    color: notifire.getGry700_300Color,
                  ),
                  _buildRow1(title: "Address", name: "Z-101,knoll,Ca"),
                  Divider(
                    height: 40,
                    color: notifire.getGry700_300Color,
                  ),
                  _buildRow1(title: "Swift Code", name: "U18"),
                  Divider(
                    height: 40,
                    color: notifire.getGry700_300Color,
                  ),
                  _buildRow1(title: "Bank Address", name: "29-power sprint,Ca"),
                  const SizedBox(
                    height: 30,
                  ),
                  Text("Reference Code",
                      style: Typographyy.bodyLargeSemiBold
                          .copyWith(color: notifire.getTextColor)),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: Typographyy.bodyMediumMedium
                          .copyWith(color: notifire.getGry500_600Color)),
                  const SizedBox(
                    height: 12,
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
                    height: 25,
                  ),
                  GetBuilder<DrawerControllerr>(builder: (contoller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: notifire.getContainerColor,
                              fixedSize: const Size.fromHeight(42),
                              side: BorderSide(color: notifire.getTextColor),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/myWallets');
                              buyCryptoBankDeposit.setSelectStep(0);
                              buyCryptoBankDeposit.selectIndex = [];
                              contoller.function(value: -1);
                              contoller.colorSelecter(value: 3);
                              setState(() {});
                            },
                            child: Text(
                              "View Wallet",
                              style: Typographyy.bodyMediumSemiBold
                                  .copyWith(color: notifire.getTextColor),
                            )),
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _buildRow1({required String title, required String name}) {
    return Row(
      children: [
        Text(
          title,
          style: Typographyy.bodyMediumRegular
              .copyWith(color: notifire.getGry500_600Color),
        ),
        const Spacer(),
        Text(
          name,
          style: Typographyy.bodyMediumMedium
              .copyWith(color: notifire.getTextColor),
        ),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset(
          "assets/images/link-horizontal.svg",
          height: 20,
          width: 20,
          color: notifire.getGry500_600Color,
        ),
      ],
    );
  }
}
