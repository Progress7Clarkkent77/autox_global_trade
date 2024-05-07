// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../ConstData/colorprovider.dart';

class AppLogo extends StatefulWidget {
  final Color? logoColor;
  final Color? textColor;
  final double? size;
  const AppLogo({super.key, this.logoColor, this.textColor, this.size});

  @override
  State<AppLogo> createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Row(
      children: [
        SvgPicture.asset(
          "assets/images/finallogotext.svg",
          height: 28,
          width: 50,
        ),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset("assets/images/finallogo.svg",
            color: widget.textColor ?? notifire.getWhitAndBlack,
            width: widget.size,
            height: 20),
      ],
    );
  }
}
