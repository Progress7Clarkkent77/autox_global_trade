import 'package:autox_global_trade/all%20code/screens/authscreens/reson.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../CommonWidgets/applogo.dart';
import '../../CommonWidgets/bottombar.dart';
import '../../CommonWidgets/comuntextfilde.dart';
import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/typography.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        bottomNavigationBar: const BottomBarr(),
        backgroundColor: notifire.getBgColor,
        appBar: constraints.maxWidth < 600
            ? appBar(isphone: true)
            : PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: appBar(isphone: false)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: notifire.getContainerColor,
                    ),
                    margin: const EdgeInsets.all(10),
                    // height: 450,
                    width: 510,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Need help with your account?".tr,
                            style: Typographyy.heading3
                                .copyWith(color: notifire.getWhitAndBlack),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                              "Enter the email address associated with your account and we will send you a link to reset your password."
                                  .tr,
                              style: Typographyy.bodyLargeMedium
                                  .copyWith(color: notifire.getGry500_600Color),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3),
                          const SizedBox(
                            height: 40,
                          ),
                          const TextFilde(
                              hinttext: "Email", suffixIconisture: false),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Get.to(const ResonPage());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: priMeryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                fixedSize: const Size.fromHeight(56),
                              ),
                              child: Center(
                                  child: Text(
                                "Send Link".tr,
                                style: Typographyy.bodyLargeSemiBold.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ))),
                          const SizedBox(
                            height: 24,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Forgot your email?".tr,
                                style: Typographyy.bodyLargeSemiBold.copyWith(
                                    color: notifire.getGry500_600Color)),
                          ]))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 200),
          ],
        ),
      );
    });
  }

  PreferredSizeWidget appBar({required bool isphone}) {
    return AppBar(
      toolbarHeight: isphone ? 52 : 120.0,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: isphone ? 8 : 12),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: priMeryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                fixedSize: Size(isphone ? 100 : 156, isphone ? 30 : 50),
              ),
              child: Center(
                  child: Text(
                "Sing In",
                style: Typographyy.bodyLargeSemiBold
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
              ))),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
      automaticallyImplyLeading: false,
      backgroundColor: notifire.getAppBarColor,
      centerTitle: false,
      title: isphone
          ? const AppLogo(
              textColor: Colors.white,
              size: 80,
            )
          : const AppLogo(
              textColor: Colors.white,
            ),
    );
  }
}
