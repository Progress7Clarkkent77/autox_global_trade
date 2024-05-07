import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

import '../../CommonWidgets/applogo.dart';
import '../../CommonWidgets/bottombar.dart';
import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/typography.dart';
import 'forgotpassword.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                    height: 424,
                    width: 510,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Verify your email".tr,
                            style: Typographyy.heading3
                                .copyWith(color: notifire.getWhitAndBlack),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "We have sent code to your email ".tr,
                            style: Typographyy.bodyLargeMedium
                                .copyWith(color: notifire.getGry500_600Color),
                          ),
                          Text(
                            "Elonmu******@mail.com".tr,
                            style: Typographyy.bodyLargeMedium
                                .copyWith(color: notifire.getWhitAndBlack),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          OTPTextField(
                            length: 5,
                            width: Get.width,
                            fieldWidth: constraints.maxWidth < 600 ? 50 : 56,
                            style: Typographyy.heading4
                                .copyWith(color: notifire.getWhitAndBlack),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            otpFieldStyle: OtpFieldStyle(
                                backgroundColor: Colors.transparent,
                                enabledBorderColor: notifire.getBorderColor,
                                disabledBorderColor: notifire.getBorderColor,
                                borderColor: notifire.getBorderColor),
                            fieldStyle: FieldStyle.box,
                            outlineBorderRadius: 12,
                            onCompleted: (pin) {},
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Get.to(const ForgotPassword());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: priMeryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                fixedSize: const Size.fromHeight(56),
                              ),
                              child: Center(
                                  child: Text(
                                "Verify Account".tr,
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
                                text: "Resend code in ".tr,
                                style: Typographyy.bodyMediumMedium.copyWith(
                                    color: notifire.getGry500_600Color)),
                            TextSpan(
                                text: "59:00 ".tr,
                                style: Typographyy.bodyMediumSemiBold
                                    .copyWith(color: notifire.getWhitAndBlack)),
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
