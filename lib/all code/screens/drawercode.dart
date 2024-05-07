// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../CommonWidgets/applogo.dart';
import '../ConstData/colorfile.dart';
import '../ConstData/colorprovider.dart';
import '../ConstData/typography.dart';
import '../controller/drawercontroller.dart';
import 'authscreens/forgotpassword.dart';
import 'authscreens/otp_screen.dart';
import 'authscreens/reson.dart';
import 'authscreens/singin.dart';
import 'authscreens/singup.dart';

class DrawerCode extends StatefulWidget {
  const DrawerCode({super.key});

  @override
  State<DrawerCode> createState() => _DrawerCodeState();
}

class _DrawerCodeState extends State<DrawerCode> {
  ColorNotifire notifire = ColorNotifire();
  DrawerControllerr contoller = Get.put(DrawerControllerr());

  int selectedTile = -1;
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return LayoutBuilder(builder: (context, constraints) {
      return Drawer(
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.transparent)),
        width: 250,
        elevation: 0,
        backgroundColor: notifire.getDrawerColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/dashboard');
                          contoller.function(value: -1);
                          contoller.colorSelecter(value: 0);
                        },
                        child: const AppLogo()),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Divider(
                color: notifire.getGry700_300Color,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Frame 56.png",
                          height: 82,
                          width: 82,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Elon Musk",
                            style: Typographyy.bodyLargeMedium
                                .copyWith(color: priMeryColor, fontSize: 18)),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Verified",
                                style: Typographyy.bodyMediumMedium
                                    .copyWith(color: notifire.getTextColor)),
                            const SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                              "assets/images/Frame.svg",
                              height: 15,
                              width: 15,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        _buildListTile(
                          title: "Dashboard",
                          icon: "assets/images/home-2.svg",
                          ontap: () {
                            Navigator.pushNamed(context, '/dashboard');
                            contoller.function(value: -1);
                            contoller.colorSelecter(value: 0);
                          },
                          index: 0,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Invoices",
                          icon: "assets/images/receipt-tax.svg",
                          ontap: () {
                            Navigator.pushNamed(context, '/invoices');
                            contoller.function(value: -1);
                            contoller.colorSelecter(value: 1);
                          },
                          index: 1,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Messages",
                          icon: "assets/images/message.svg",
                          index: 2,
                          ontap: () {
                            Navigator.pushNamed(context, '/messages');
                            contoller.function(value: -1);
                            contoller.colorSelecter(value: 2);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "My Wallets",
                          icon: "assets/images/card.svg",
                          index: 3,
                          ontap: () {
                            Navigator.pushNamed(context, '/myWallets');
                            contoller.function(value: -1);
                            contoller.colorSelecter(value: 3);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Transfer",
                          icon: "assets/images/coin-convert.svg",
                          index: 4,
                          ontap: () {
                            Navigator.pushNamed(context, '/dashboard');
                            transfer(width: constraints.maxWidth,context: context);
                            contoller.colorSelecter(value: 4);
                            contoller.function(value: -1);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ListTileTheme(
                          dense: true,
                          tileColor: 0 == contoller.currentIndex
                              ? priMeryColor
                              : notifire.getDrawerColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: ExpansionTile(
                            initiallyExpanded: 0 == contoller.currentIndex,
                            key: Key(contoller.currentIndex.toString()),
                            onExpansionChanged: (value) {
                              Navigator.pushNamed(context, '/creditCard');
                              contoller.colorSelecter(value: 5);
                              if (value == true) {
                                contoller.function(value: 0);
                              } else {
                                contoller.function(value: -1);
                              }
                            },
                            iconColor: contoller.currentIndex == 0 ? whiteColor : notifire.getGry500_600Color,
                            collapsedIconColor: notifire.getGry500_600Color,
                            leading: SizedBox(
                              height: 22,
                              width: 22,
                              child: SvgPicture.asset(
                                "assets/images/bitcoin-circle.svg",
                                color: contoller.currentIndex == 0 ? whiteColor : notifire.getGry500_600Color,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            title: Text("Buy Crypto".tr,
                                style: Typographyy.bodyMediumMedium.copyWith(
                                    color: contoller.currentIndex == 0 ? whiteColor : notifire.getGry500_600Color)),
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: SizedBox(
                                      height: 80,
                                      child: VerticalDivider(
                                          color: notifire.getGry700_300Color,
                                          width: 2),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 42,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/creditCard');
                                            contoller.colorSelecter(value: 5);
                                          },
                                          child: Text("Credit Card".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller.currentcolor == 5 ? priMeryColor : notifire.getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/bankDeposit');
                                            contoller.colorSelecter(value: 6);
                                          },
                                          child: Text("Bank Deposit".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              6
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Sell Crypto",
                          icon: "assets/images/money-bill.svg",
                          index: 7,
                          ontap: () {
                            Navigator.pushNamed(context, '/sellCrypto');
                            contoller.colorSelecter(value: 7);
                            contoller.function(value: -1);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ListTileTheme(
                          dense: true,
                          tileColor: 1 == contoller.currentIndex
                              ? priMeryColor
                              : notifire.getDrawerColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: ExpansionTile(
                            initiallyExpanded: 1 == contoller.currentIndex,
                            key: Key(contoller.currentIndex.toString()),
                            onExpansionChanged: (value) {
                              Navigator.pushNamed(context, '/signIn');
                              Get.off(const SingInScreen());
                              contoller.colorSelecter(value: 8);
                              if (value == true) {
                                contoller.function(value: 1);
                              } else {
                                contoller.function(value: -1);
                              }
                            },
                            iconColor: contoller.currentIndex == 1
                                ? whiteColor
                                : notifire.getGry500_600Color,
                            collapsedIconColor: notifire.getGry500_600Color,
                            leading: SizedBox(
                              height: 22,
                              width: 22,
                              child: SvgPicture.asset(
                                "assets/images/papers-text.svg",
                                color: contoller.currentIndex == 1
                                    ? whiteColor
                                    : notifire.getGry500_600Color,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            title: Text("Auth Pages".tr,
                                style: Typographyy.bodyMediumMedium.copyWith(
                                    color: contoller.currentIndex == 1
                                        ? whiteColor
                                        : notifire.getGry500_600Color)),
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: SizedBox(
                                      height: 160,
                                      child: VerticalDivider(
                                          color: notifire.getGry700_300Color,
                                          width: 2),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 42,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Get.off(const SingInScreen());
                                            contoller.colorSelecter(value: 8);
                                          },
                                          child: Text("Sign in".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              8
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Get.off(const SingUpScreen());
                                            contoller.colorSelecter(value: 9);
                                          },
                                          child: Text("Sign up".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              9
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Get.off(const OtpScreen());
                                            contoller.colorSelecter(value: 10);
                                          },
                                          child: Text("OTP Authentication".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              10
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Get.off(const ForgotPassword());
                                            contoller.colorSelecter(value: 11);
                                          },
                                          child: Text("Forget Password".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              11
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Get.off(const ResonPage());
                                            contoller.colorSelecter(value: 12);
                                          },
                                          child: Text("Reason".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              12
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ListTileTheme(
                          dense: true,
                          tileColor: 2 == contoller.currentIndex ? priMeryColor : notifire.getDrawerColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: ExpansionTile(
                            initiallyExpanded: 2 == contoller.currentIndex,
                            key: Key(contoller.currentIndex.toString()),
                            onExpansionChanged: (value) {
                              Navigator.pushNamed(context, '/transactions');
                              contoller.colorSelecter(value: 13);
                              if (value == true) {
                                contoller.function(value: 2);
                              } else {
                                contoller.function(value: -1);
                              }
                            },
                            iconColor: contoller.currentIndex == 2 ? whiteColor : notifire.getGry500_600Color,
                            collapsedIconColor: notifire.getGry500_600Color,
                            leading: SizedBox(
                              height: 22,
                              width: 22,
                              child: SvgPicture.asset(
                                "assets/images/dashbord.svg",
                                color: contoller.currentIndex == 2
                                    ? whiteColor
                                    : notifire.getGry500_600Color,
                                height: 22,
                                width: 22,
                              ),
                            ),
                            title: Text("Activity".tr, style: Typographyy.bodyMediumMedium.copyWith(color: contoller.currentIndex == 2 ? whiteColor
                                : notifire.getGry500_600Color)),
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: SizedBox(
                                      height: 80,
                                      child: VerticalDivider(
                                          color: notifire.getGry700_300Color,
                                          width: 2),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 42,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/transactions');
                                            contoller.colorSelecter(value: 13);
                                          },
                                          child: Text("Transactions".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller.currentcolor == 13 ? priMeryColor : notifire.getGry500_600Color))),
                                      const SizedBox(
                                        height: 22,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/recipients');
                                            contoller.colorSelecter(value: 14);
                                          },
                                          child: Text("Recipients".tr,
                                              style: Typographyy
                                                  .bodyMediumMedium
                                                  .copyWith(
                                                      color: contoller
                                                                  .currentcolor ==
                                                              14
                                                          ? priMeryColor
                                                          : notifire
                                                              .getGry500_600Color))),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Analytics",
                          icon: "assets/images/Chart.svg",
                          index: 15,
                          ontap: () {
                            Navigator.pushNamed(context, '/analytics');
                            contoller.colorSelecter(value: 15);
                            contoller.function(value: -1);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Get Help",
                          icon: "assets/images/question-circle-outlined.svg",
                          index: 16,
                          ontap: () {
                            Navigator.pushNamed(context, '/getHelp');
                            contoller.colorSelecter(value: 16);
                            contoller.function(value: -1);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        _buildListTile(
                          title: "Settings",
                          icon: "assets/images/settings.svg",
                          index: 17,
                          ontap: () {
                            Navigator.pushNamed(context, '/settings');
                            contoller.colorSelecter(value: 17);
                            contoller.function(value: -1);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  bool isTransfer = false;





  Widget _buildListTile({required String title,
      required String icon,
      void Function()? ontap,
      required int index}) {return Container(
      height: 44,
      decoration: BoxDecoration(
        color:
            contoller.currentcolor == index ? priMeryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ListTile(
          // tileColor: Colors.lightGreen,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          onTap: ontap,
          dense: true,
          leading: SizedBox(
            height: 22,
            width: 22,
            child: SvgPicture.asset(
              icon,
              color: contoller.currentcolor == index
                  ? whiteColor
                  : notifire.getGry500_600Color,
              height: 22,
              width: 22,
            ),
          ),
          title: Text(
            title.tr,
            style: Typographyy.bodyMediumMedium.copyWith(
                color: contoller.currentcolor == index
                    ? whiteColor
                    : notifire.getGry500_600Color),
          ),
        ),
      ),
    );}
}





Future<void> transfer({required double width,context}) async {
  return showDialog<void>(
    context: context, // user must tap button!
    builder: (BuildContext context) {
      return GetBuilder<DrawerControllerr>(
          builder: (contoller) {
            return GetBuilder<DrawerControllerr>(
                builder: (drawerControllerr) {
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
          }
      );
    },
  );
}

Future<void> complete1(context, {required double width}) {
  notifire = Provider.of<ColorNotifire>(context, listen: false);
  return Get.defaultDialog(
      backgroundColor: notifire.getContainerColor,
      title: "",
      content: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
         padding: const EdgeInsets.symmetric(horizontal: 10),
          // height: 400,
          width: width < 600 ? Get.width : 420,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/discount-voucher.png",height: 80,width: 80),
              const SizedBox(height: 10,),
              Text(
                "Yay!",
                style: Typographyy.heading3
                    .copyWith(color: notifire.getTextColor),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "You Successfully Transfer",
                          style: Typographyy.bodyLargeExtraBold
                              .copyWith(color: notifire.getTextColor)),
                      TextSpan(
                          text: " 0.25644 BTC ",
                          style: Typographyy.bodyLargeExtraBold
                              .copyWith(color: priMeryColor)),
                      TextSpan(
                          text: "From Bitcloud",
                          style: Typographyy.bodyLargeExtraBold
                              .copyWith(color: notifire.getTextColor)),
                    ])),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Status",
                    style: Typographyy.bodyMediumMedium
                        .copyWith(color: notifire.getGry500_600Color),
                  ),
                  const Spacer(),
                  Text(
                    "Transaction ID",
                    style: Typographyy.bodyMediumMedium
                        .copyWith(color: notifire.getGry500_600Color),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Completed",
                    style: Typographyy.bodyMediumMedium
                        .copyWith(color: priMeryColor),
                  ),
                  const Spacer(),
                  Text(
                    "0Am4520xws..23231",
                    style: Typographyy.bodyMediumMedium
                        .copyWith(color: notifire.getTextColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fixedSize: const Size.fromHeight(42),
                          backgroundColor: notifire.getGry700_300Color,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Transaction",
                          style: Typographyy.bodyLargeMedium
                              .copyWith(color: notifire.getTextColor,overflow: TextOverflow.ellipsis,),maxLines: 1,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          fixedSize: const Size.fromHeight(42),
                          backgroundColor: priMeryColor,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Wallet",
                          style: Typographyy.bodyLargeMedium
                              .copyWith(color: Colors.white),
                        )),
                  ),
                ],
              )
            ],
          )),
      Positioned(
          top: -150,
          right: 0,
          left: 0,
          child: Lottie.asset('assets/images/L6o2mVij1E.json', height: 300, width: 300)),
    ],));
}


