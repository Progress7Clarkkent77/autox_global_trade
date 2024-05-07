// ignore_for_file: deprecated_member_use

import 'package:autox_global_trade/all%20code/screens/authscreens/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../CommonWidgets/applogo.dart';
import '../../CommonWidgets/bottombar.dart';
import '../../CommonWidgets/comuntextfilde.dart';
import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/typography.dart';
import '../../controller/singincontroller.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  SingInController singInController = Get.put(SingInController());
  ColorNotifire notifire = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: notifire.getBgColor,
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  return Scaffold(
                    resizeToAvoidBottomInset: false,
                    backgroundColor: notifire.getBgColor,
                    bottomNavigationBar: const BottomBarr(),
                    body: SizedBox(
                      height: Get.height,
                      width: Get.width,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildSingupUi(
                                        width: constraints.maxWidth),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (constraints.maxWidth < 980) {
                  return SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: _buildSingupUi(
                                      width: constraints.maxWidth),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: _buildSingupUi(
                                      width: constraints.maxWidth),
                                ),
                                Expanded(child: _buildui()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildui() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: priMeryColor,
              height: 935,
              // color: Colors.deepPurple,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Get better with money",
                        style: Typographyy.heading2
                            .copyWith(color: containerColor)),
                    Text(
                      'Overpay help you set saving goals, earn cash back offers, Go to disclaimer for more details and get paychecks up to two days early. Get a \$20 bonus when you receive qualifying direct deposits',
                      style: Typographyy.bodyMediumMedium
                          .copyWith(color: containerColor.withOpacity(0.7)),
                      textAlign: TextAlign.center,
                    ),
                    const Flexible(
                        child: SizedBox(
                      height: 140,
                    )),
                  ],
                ),
              ),
            ),
            Positioned(
                right: 0,
                left: 0,
                bottom: 300,
                child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Image.asset(
                      "assets/images/hero-15-img 2.png",
                      height: 500,
                      width: 500,
                    ))),
            Positioned(
                right: 0,
                child: Container(
                    margin: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      "assets/images/Group.svg",
                      height: 142,
                      width: 26,
                    ))),
            Positioned(
                bottom: 0,
                child: Container(
                    margin: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      "assets/images/Vector.svg",
                      height: 81,
                      width: 81,
                    ))),
          ],
        ),
      ],
    );
  }

  bool isChecked = false;
  Widget _buildSingupUi({required double width}) {
    return GetBuilder<SingInController>(builder: (controller) {
      return Container(
        color: notifire.getBgColor,
        height: width < 600 ? 820 : 940,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: width < 600
                        ? 0
                        : width < 1200
                            ? 15
                            : 24.0),
                child: const AppLogo(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 600
                        ? 10
                        : width < 1200
                            ? 30
                            : 100),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: width < 600 ? 40 : 148,
                      ),
                      Text("Sign in to Overpay".tr,
                          style: Typographyy.heading3
                              .copyWith(color: notifire.getTextColor)),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Send, spend and save smarter".tr,
                        style: Typographyy.bodyLargeRegular
                            .copyWith(color: notifire.getGry500_600Color),
                      ),
                      SizedBox(
                        height: width < 600 ? 20 : 40,
                      ),
                      width < 600
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        fixedSize: const Size.fromHeight(56),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        side: BorderSide(
                                            color:
                                                notifire.getGry700_300Color)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/google.svg",
                                            width: 22,
                                            height: 22),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Flexible(
                                            child: Text(
                                                "Sign In with Google".tr,
                                                style: Typographyy
                                                    .bodyLargeMedium
                                                    .copyWith(
                                                        color: notifire
                                                            .getTextColor),
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                      ],
                                    )),
                                const SizedBox(
                                  height: 16,
                                ),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        fixedSize: const Size.fromHeight(56),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        side: BorderSide(
                                            color:
                                                notifire.getGry700_300Color)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/apple.svg",
                                            width: 20,
                                            height: 22,
                                            color: notifire.getWhitAndBlack),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Flexible(
                                            child: Text("Sign In with Apple".tr,
                                                style: Typographyy
                                                    .bodyLargeMedium
                                                    .copyWith(
                                                        color: notifire
                                                            .getTextColor),
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                      ],
                                    )),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                          fixedSize: const Size.fromHeight(56),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          side: BorderSide(
                                              color:
                                                  notifire.getGry700_300Color)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/images/google.svg",
                                              width: 22,
                                              height: 22),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Flexible(
                                              child: Text(
                                                  "Sign In with Google".tr,
                                                  style: Typographyy
                                                      .bodyLargeMedium
                                                      .copyWith(
                                                          color: notifire
                                                              .getTextColor),
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                        ],
                                      )),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                          fixedSize: const Size.fromHeight(56),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          side: BorderSide(
                                              color:
                                                  notifire.getGry700_300Color)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/images/apple.svg",
                                              width: 20,
                                              height: 22,
                                              color: notifire.getWhitAndBlack),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Flexible(
                                              child: Text(
                                                  "Sign In with Apple".tr,
                                                  style: Typographyy
                                                      .bodyLargeMedium
                                                      .copyWith(
                                                          color: notifire
                                                              .getTextColor),
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 42,
                            width: 200,
                            child: TabBar(
                                unselectedLabelColor:
                                    notifire.getGry500_600Color,
                                labelColor: Colors.white,
                                labelStyle: Typographyy.bodyMediumMedium,
                                indicator: BoxDecoration(
                                    color: priMeryColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                tabs: const [
                                  Text("Email"),
                                  Text("Mobile"),
                                ]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 250,
                              child: TabBarView(children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email",
                                          style: Typographyy.bodyMediumMedium
                                              .copyWith(
                                                  color: notifire
                                                      .getGry500_600Color),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const TextFilde(
                                            hinttext: "Email",
                                            suffixIconisture: false),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Password",
                                          style: Typographyy.bodyMediumMedium
                                              .copyWith(
                                                  color: notifire
                                                      .getGry500_600Color),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 56,
                                          // width: 427,
                                          child: TextField(
                                            obscureText: controller.istrue,
                                            style: Typographyy.bodyLargeMedium
                                                .copyWith(
                                                    color: notifire
                                                        .getWhitAndBlack),
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.all(16),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    borderSide: BorderSide(
                                                        color: notifire
                                                            .getGry700_300Color)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    borderSide: BorderSide(
                                                        color: notifire
                                                            .getGry700_300Color)),
                                                hintText: "Password",
                                                hintStyle: Typographyy
                                                    .bodyLargeRegular
                                                    .copyWith(
                                                        color: notifire
                                                            .getGry600_500Color),
                                                suffixIcon: SizedBox(
                                                    width: 24,
                                                    height: 24,
                                                    child: Center(
                                                        child: InkWell(
                                                            onTap: () {
                                                              controller.passwordis(
                                                                  controller
                                                                          .istrue =
                                                                      !controller
                                                                          .istrue);
                                                            },
                                                            child: SvgPicture.asset(
                                                              controller.istrue
                                                                  ? "assets/images/eye-off.svg"
                                                                  : "assets/images/eye-2.svg",
                                                              height: 24,
                                                              width: 24,
                                                              color:
                                                                  greyscale600,
                                                            ))))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: width < 600 ? 4 : 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mobile",
                                                style: Typographyy
                                                    .bodyMediumMedium
                                                    .copyWith(
                                                        color: notifire
                                                            .getGry500_600Color),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              PopupMenuButton(
                                                  color:
                                                      notifire.getDrawerColor,
                                                  tooltip: '',
                                                  onOpened: () {
                                                    controller.isnumber2(true);
                                                  },
                                                  onCanceled: () {
                                                    controller.isnumber2(false);
                                                  },
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          8))),
                                                  offset: const Offset(5, 50),
                                                  child: Container(
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      border: Border.all(
                                                          color: controller
                                                                  .isnumber
                                                              ? priMeryColor
                                                              : notifire
                                                                  .getGry700_300Color),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  12)),
                                                    ),
                                                    child: ListTile(
                                                        dense: true,
                                                        contentPadding:
                                                            const EdgeInsets.symmetric(
                                                                horizontal: 10),
                                                        trailing: Transform.translate(
                                                            offset:
                                                                const Offset(
                                                                    -10, 0),
                                                            child: SizedBox(
                                                                height: 20,
                                                                width: 20,
                                                                child: Center(
                                                                    child: SvgPicture.asset(
                                                                        controller.isnumber
                                                                            ? "assets/images/chevron-up.svg"
                                                                            : "assets/images/chevron-down.svg",
                                                                        height:
                                                                            22,
                                                                        width:
                                                                            22,
                                                                        color: controller.isnumber
                                                                            ? priMeryColor
                                                                            : notifire.getGry500_600Color)))),
                                                        title: Text(
                                                          controller.numbers[
                                                              controller
                                                                  .numberselecter],
                                                          style: Typographyy
                                                              .bodyMediumMedium
                                                              .copyWith(
                                                                  color: notifire
                                                                      .getGry500_600Color),
                                                        )),
                                                  ),
                                                  itemBuilder: (context) => [
                                                        PopupMenuItem(
                                                            enabled: false,
                                                            child: SizedBox(
                                                              height: 150,
                                                              width: 50,
                                                              child: ListView
                                                                  .builder(
                                                                itemCount:
                                                                    controller
                                                                        .numbers
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  return InkWell(
                                                                      onTap:
                                                                          () {
                                                                        controller
                                                                            .numberselecter2(index);
                                                                        Future
                                                                            .delayed(
                                                                          const Duration(
                                                                              milliseconds: 100),
                                                                          () {
                                                                            Get.back();
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          const SizedBox(
                                                                            height:
                                                                                10,
                                                                          ),
                                                                          Text(
                                                                            controller.numbers[index],
                                                                            style:
                                                                                Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                          ),
                                                                        ],
                                                                      ));
                                                                },
                                                              ),
                                                            ))
                                                      ]),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          flex: width < 600 ? 5 : 3,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Phone",
                                                style: Typographyy
                                                    .bodyMediumMedium
                                                    .copyWith(
                                                        color: notifire
                                                            .getGry500_600Color),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const TextFilde(
                                                  hinttext: "Enter Number",
                                                  suffixIconisture: false),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Password",
                                          style: Typographyy.bodyMediumMedium
                                              .copyWith(
                                                  color: notifire
                                                      .getGry500_600Color),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 56,
                                          // width: 427,
                                          child: TextField(
                                            obscureText: controller.istrue,
                                            style: Typographyy.bodyLargeMedium
                                                .copyWith(
                                                    color: notifire
                                                        .getWhitAndBlack),
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.all(16),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    borderSide: BorderSide(
                                                        color: notifire
                                                            .getGry700_300Color)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    borderSide: BorderSide(
                                                        color: notifire
                                                            .getGry700_300Color)),
                                                hintText: "Password",
                                                hintStyle: Typographyy
                                                    .bodyLargeRegular
                                                    .copyWith(
                                                        color: notifire
                                                            .getGry600_500Color),
                                                suffixIcon: SizedBox(
                                                    width: 24,
                                                    height: 24,
                                                    child: Center(
                                                        child: InkWell(
                                                            onTap: () {
                                                              controller.passwordis(
                                                                  controller
                                                                          .istrue =
                                                                      !controller
                                                                          .istrue);
                                                            },
                                                            child: SvgPicture.asset(
                                                              controller.istrue
                                                                  ? "assets/images/eye-off.svg"
                                                                  : "assets/images/eye-2.svg",
                                                              height: 24,
                                                              width: 24,
                                                              color:
                                                                  greyscale600,
                                                            ))))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              dense: true,
                              title: Text('Remember me'.tr,
                                  style: Typographyy.bodyLargeSemiBold.copyWith(
                                      color: notifire.getWhitAndBlack)),
                              leading: SizedBox(
                                height: 24,
                                width: 24,
                                child: Checkbox(
                                  checkColor: Colors.white,
                                  hoverColor: Colors.transparent,
                                  shape: const CircleBorder(),
                                  fillColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return priMeryColor;
                                      }
                                      return notifire.getGry700_300Color;
                                    },
                                  ),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Forgot Password?".tr,
                            style: Typographyy.bodyLargeSemiBold
                                .copyWith(color: priMeryColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: width < 600 ? 18 : 32,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(const SingUpScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: priMeryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            fixedSize: const Size.fromHeight(56),
                          ),
                          child: Center(
                              child: Text(
                            "Sing In".tr,
                            style: Typographyy.bodyLargeSemiBold.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ))),
                      const SizedBox(
                        height: 32,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Don’t have an account?".tr,
                            style: Typographyy.bodyLargeMedium
                                .copyWith(color: notifire.getWhitAndBlack)),
                        TextSpan(
                            text: " Sign Up".tr,
                            style: Typographyy.bodyLargeExtraBold
                                .copyWith(color: notifire.getWhitAndBlack)),
                      ])),
                    ]),
              ),
            ],
          ),
        ),
        // color: Colors.deepPurple,
      );
    });
  }
}

Widget buildTextFilde(
    {required String hinttext, String? icon, required bool suffixIconisture}) {
  return SizedBox(
    height: 56,
    // width: 427,
    child: TextField(
      style:
          Typographyy.bodyLargeMedium.copyWith(color: notifire.getWhitAndBlack),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: notifire.getGry700_300Color)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: notifire.getGry700_300Color)),
        hintText: hinttext,
        hintStyle: Typographyy.bodyLargeRegular
            .copyWith(color: notifire.getGry600_500Color),
        suffixIcon: suffixIconisture
            ? SizedBox(
                width: 24,
                height: 24,
                child: Center(
                    child: SvgPicture.asset(
                  icon!,
                  height: 24,
                  width: 24,
                  color: greyscale600,
                )))
            : const SizedBox(),
      ),
    ),
  );
}
