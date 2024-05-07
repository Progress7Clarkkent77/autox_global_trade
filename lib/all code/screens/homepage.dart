import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../ConstData/colorprovider.dart';
import '../ConstData/typography.dart';
import '../controller/drawercontroller.dart';

import 'DrawerPagess/analytics.dart';
import 'DrawerPagess/dashboard.dart';
import 'DrawerPagess/gethelp.dart';
import 'DrawerPagess/invoices/invoices.dart';
import 'DrawerPagess/chatscreenpages/messages.dart';
import 'DrawerPagess/my_wallets.dart';
import 'DrawerPagess/recipients.dart';
import 'DrawerPagess/settings.dart';
import 'DrawerPagess/transactions.dart';
import 'appbarcode.dart';
import 'drawercode.dart';
import 'drawerpagess/buycrypto/bankdeposit.dart';
import 'drawerpagess/buycrypto/creditcard.dart';
import 'drawerpagess/sellcrypto/sell_crypto.dart';

class HomePage extends StatefulWidget {
  final String page;
  const HomePage({super.key, required this.page});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pagename = [
    'dashboard',
    'invoices',
    'messages',
    'myWallets',
    'transfer',
    'creditCard',
    'bankDeposit',
    'sellCrypto',
    'signIn',
    'signup',
    'authentication',
    'forgetPassword',
    'reason',
    'transactions',
    'recipients',
    'analytics',
    'getHelp',
    'settings',
  ];

  ColorNotifire notifire = ColorNotifire();
  DrawerControllerr controller = Get.put(DrawerControllerr());
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<DrawerControllerr>(builder: (controller) {
      return Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          //Mobile Layout
          if (constraints.maxWidth < 800) {
            return Scaffold(
              drawer: const DrawerCode(),
              appBar: const AppBarCode(),
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: notifire.getBgColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    constraints.maxWidth < 600
                        ? Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                                controller.pageTitle[controller.currentcolor]
                                    .toString()
                                    .tr,
                                style: Typographyy.heading4
                                    .copyWith(color: notifire.getTextColor)),
                          )
                        : const SizedBox(),
                    Expanded(
                      child: IndexedStack(
                        index: pagename.indexOf(widget.page),
                        children: const [
                          Dashboard(),
                          Invoices(),
                          Messages(),
                          MyWallets(),
                          Transactions(),
                          CreditCard(),
                          BankDeposit(),
                          SellCrypto(),
                          GetHelp(),
                          Settings(),
                          Settings(),
                          Settings(),
                          Settings(),
                          Transactions(),
                          Recipients(),
                          Analytics(),
                          GetHelp(),
                          Settings(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          //webSite LayOut
          else {
            return Scaffold(
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: notifire.getBgColor,
                child: Row(
                  children: [
                    const DrawerCode(),
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppBarCode(),
                            constraints.maxWidth < 1000
                                ? Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                        controller
                                            .pageTitle[controller.currentcolor]
                                            .toString()
                                            .tr,
                                        style: Typographyy.heading4.copyWith(
                                            color: notifire.getTextColor)),
                                  )
                                : const SizedBox(),

                            Expanded(
                              child: IndexedStack(
                                index: pagename.indexOf(widget.page),
                                children: const [
                                  Dashboard(),
                                  Invoices(),
                                  Messages(),
                                  MyWallets(),
                                  Transactions(),
                                  CreditCard(),
                                  BankDeposit(),
                                  SellCrypto(),
                                  GetHelp(),
                                  Settings(),
                                  Settings(),
                                  Settings(),
                                  Settings(),
                                  Transactions(),
                                  Recipients(),
                                  Analytics(),
                                  GetHelp(),
                                  Settings(),
                                ],
                              ),
                            )
                            //  Expanded(
                            //    child: Obx(() {
                            //    Widget selectedPage = controller.page[controller.pageSelecter.value];
                            // //   // Widget selectedPage = controller.page[controller.pageselecter.value];
                            // return selectedPage;
                            //    }),
                            //  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        }),
      );
    });
  }
}
