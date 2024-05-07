// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/typography.dart';
import '../../controller/invoicescontroller.dart';
import '../../controller/transactionscontroller.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {

  ScrollController scrollController1 = ScrollController();
  ScrollController scrollController2 = ScrollController();

  TransactionController transactionController = Get.put(TransactionController());
  ColorNotifire notifire = ColorNotifire();
  InvoiceController invoiceController = Get.put(InvoiceController());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<TransactionController>(builder: (transactionController) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        color: notifire.getBgColor,
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: Typographyy.bodyMediumMedium
                            .copyWith(color: notifire.getTextColor),
                        decoration: InputDecoration(
                          prefixIcon: SizedBox(
                              height: 22,
                              width: 22,
                              child: Center(
                                  child: SvgPicture.asset(
                                "assets/images/Search.svg",
                                height: 20,
                                width: 20,
                                color: notifire.getTextColor,
                              ))),
                          hintText: "Search for transactions...",
                          hintStyle: Typographyy.bodyMediumMedium
                              .copyWith(color: notifire.getGry500_600Color),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                  color: notifire.getGry700_300Color)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                  color: notifire.getGry700_300Color)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                  color: notifire.getGry700_300Color)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                  color: notifire.getGry700_300Color)),
                        ),
                      ),
                    ),
                    constraints.maxWidth < 800
                        ? const SizedBox()
                        : const Spacer(),

                    constraints.maxWidth < 800 ? const SizedBox() : _filters(),
                    const SizedBox(
                      width: 16,
                    ),
                    constraints.maxWidth < 800 ? const SizedBox() : _exports(),


                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                constraints.maxWidth < 800
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _filters(),
                          const SizedBox(
                            width: 16,
                          ),
                          _exports(),
                        ],
                      )
                    : const SizedBox(),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    height: Get.height + (constraints.maxWidth<600? transactionController.isFilter?200 :100 : transactionController.isFilter?0 :-150),
                    width: constraints.maxWidth,
                    child: ListView(
                      shrinkWrap: true,
                      controller: scrollController2,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: constraints.maxWidth < 1400 ? 1500 : constraints.maxWidth,
                          child: SingleChildScrollView(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      transactionController.isFilter ? const SizedBox(height: 20,) : const SizedBox(),
                                      transactionController.isFilter ?  Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Type",
                                                        style: Typographyy
                                                            .bodyMediumExtraBold
                                                            .copyWith(
                                                            color: notifire
                                                                .getGry500_600Color),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),

                                                      PopupMenuButton(
                                                        constraints: const BoxConstraints(
                                                          maxWidth: 250,
                                                          minWidth: 250,
                                                        ),
                                                        onOpened: () {
                                                          transactionController.setIsTypeMenu(true);
                                                        },
                                                        onCanceled: () {
                                                          transactionController.setIsTypeMenu(false);
                                                        },
                                                        color: notifire.getContainerColor,
                                                        tooltip: "",
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                        offset: const Offset(0, 55),
                                                        child: Container(
                                                          height: 48,
                                                          width: 200,
                                                          padding: const EdgeInsets.all(12),
                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                                            border: Border.all(color: transactionController.isTypeMenu? priMeryColor :  notifire.getGry700_300Color),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Text(transactionController.type[transactionController.selectType], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                              ),
                                                              const Spacer(),
                                                              SvgPicture.asset(transactionController.isTypeMenu?  "assets/images/chevron-up.svg" :"assets/images/chevron-down.svg", height: 20, width: 20,)
                                                            ],
                                                          ),
                                                        ),
                                                        itemBuilder: (context) {
                                                          return [
                                                            PopupMenuItem(
                                                              enabled: false,
                                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                child: GetBuilder<TransactionController>(
                                                                  builder: (transactionController) {
                                                                    return Column(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Row(
                                                                        children: [
                                                                          Expanded(
                                                                            child: PopupMenuButton(
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                                              offset: const Offset(0, 50),
                                                                              color: notifire.getContainerColor,
                                                                              child: Container(
                                                                                height: 48,
                                                                                padding: const EdgeInsets.all(8),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(12),
                                                                                  border: Border.all(color: notifire.getGry700_300Color),
                                                                                ),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(transactionController.type[transactionController.selectType], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                                                    ),
                                                                                    const Spacer(),
                                                                                    SvgPicture.asset("assets/images/chevron-down.svg", height: 20, width: 20,)
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              itemBuilder: (context) {
                                                                              return [
                                                                                 PopupMenuItem(

                                                                                     child:
                                                                                 SizedBox(
                                                                                   height: 70,
                                                                                   width: 110,
                                                                                   child: ListView.builder(
                                                                                     itemCount: transactionController.type.length,
                                                                                     shrinkWrap: true,
                                                                                     itemBuilder: (context, index) {
                                                                                       return Column(
                                                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                                                                         children: [
                                                                                           InkWell(
                                                                                               onTap: () {
                                                                                                 transactionController.setSelectType(index);
                                                                                                 Get.back();
                                                                                               },
                                                                                               child: Text(transactionController.type[index],style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),)),
                                                                                         const SizedBox(height: 10,),
                                                                                         ],
                                                                                       );

                                                                                },),)),
                                                                              ];
                                                                            },),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                        const SizedBox(height: 12,),
                                                                        Row(
                                                                          children: [
                                                                            Expanded(
                                                                              child: Container(
                                                                                height: 48,
                                                                                padding: const EdgeInsets.all(8),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(12),
                                                                                  border: Border.all(color: notifire.getGry700_300Color),
                                                                                ),
                                                                                child: Center(
                                                                                  child: TextField(
                                                                                    style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                                                                                    decoration: InputDecoration(
                                                                                        hintText: "Minimum",
                                                                                        hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                                        border: InputBorder.none,isDense: true),),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(height: 12,),
                                                                        Row(
                                                                          children: [
                                                                            Expanded(
                                                                              child: Container(
                                                                                height: 48,
                                                                                padding: const EdgeInsets.all(8),
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(12),
                                                                                  border: Border.all(color: notifire.getGry700_300Color),
                                                                                ),
                                                                                child: Center(
                                                                                  child: TextField(
                                                                                    style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                                                                                    decoration: InputDecoration(
                                                                                        hintText: "Maximum",
                                                                                        hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                                        border: InputBorder.none,isDense: true),),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(height: 24,),
                                                                        Row(
                                                                          children: [
                                                                            Expanded(
                                                                              child: ElevatedButton(
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                                                    elevation: 0,
                                                                                    fixedSize: const Size.fromHeight(48),
                                                                                    backgroundColor: priMeryColor,
                                                                                  ),
                                                                                  onPressed: () {
                                                                                    Get.back();

                                                                              }, child: Text("Apply",style: Typographyy.bodyMediumExtraBold.copyWith(color: Colors.white),)),
                                                                            )
                                                                          ],
                                                                        ),

                                                              ],
                                                            );
                                                                  }
                                                                )),
                                                          ];

                                                      },),

                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Archieve",
                                                        style: Typographyy
                                                            .bodyMediumExtraBold
                                                            .copyWith(
                                                            color: notifire
                                                                .getGry500_600Color),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      PopupMenuButton(
                                                        constraints: const BoxConstraints(
                                                          maxWidth: 200,
                                                          minWidth: 200,
                                                        ),
                                                        onOpened: () {
                                                          transactionController.setIsArchieveMenu(true);
                                                        },
                                                        onCanceled: () {
                                                          transactionController.setIsArchieveMenu(false);
                                                        },
                                                        color: notifire.getContainerColor,
                                                        tooltip: "",
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                        offset: const Offset(0, 55),
                                                        child: Container(
                                                          height: 48,
                                                          width: 200,
                                                          padding: const EdgeInsets.all(12),
                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                                            border: Border.all(color: transactionController.isArchieveMenu? priMeryColor :  notifire.getGry700_300Color),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Text(transactionController.archieveMenu[transactionController.selectIsArchieveMenu], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                              ),
                                                              const Spacer(),
                                                              SvgPicture.asset(transactionController.isArchieveMenu?  "assets/images/chevron-up.svg" :"assets/images/chevron-down.svg", height: 20, width: 20,)
                                                            ],
                                                          ),
                                                        ),
                                                        itemBuilder: (context) {
                                                          return [
                                                            PopupMenuItem(
                                                                enabled: false,
                                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                child: GetBuilder<TransactionController>(
                                                                    builder: (transactionController) {
                                                                      return  SizedBox(
                                                                        height: 70,
                                                                        width: 110,
                                                                        child: ListView.builder(
                                                                          itemCount: transactionController.archieveMenu.length,
                                                                          shrinkWrap: true,
                                                                          itemBuilder: (context, index) {
                                                                            return Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                InkWell(
                                                                                    onTap: () {
                                                                                      transactionController.setSelectIsArchieveMenu(index);
                                                                                      Get.back();
                                                                                    },
                                                                                    child: Text(transactionController.archieveMenu[index],style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),)),
                                                                                const SizedBox(height: 10,),
                                                                              ],
                                                                            );

                                                                          },),);
                                                                    }
                                                                )),
                                                          ];

                                                        },)
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Transaction type",
                                                        style: Typographyy
                                                            .bodyMediumExtraBold
                                                            .copyWith(
                                                            color: notifire
                                                                .getGry500_600Color),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      PopupMenuButton(
                                                        constraints: const BoxConstraints(
                                                          maxWidth: 250,
                                                          minWidth: 250,
                                                        ),
                                                        onOpened: () {
                                                          transactionController.setIsTransactionMenu(true);
                                                        },
                                                        onCanceled: () {
                                                          transactionController.setIsTransactionMenu(false);
                                                        },
                                                        color: notifire.getContainerColor,
                                                        tooltip: "",
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                        offset: const Offset(0, 55),
                                                        child: Container(
                                                          height: 48,
                                                          width: 200,
                                                          padding: const EdgeInsets.all(12),
                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                                            border: Border.all(color: transactionController.isTransactionMenu? priMeryColor :  notifire.getGry700_300Color),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Text(transactionController.transactionMenu[transactionController.selectIsTransactionMenu], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                              ),
                                                              const Spacer(),
                                                              SvgPicture.asset(transactionController.isTransactionMenu?  "assets/images/chevron-up.svg" :"assets/images/chevron-down.svg", height: 20, width: 20,)
                                                            ],
                                                          ),
                                                        ),
                                                        itemBuilder: (context) {
                                                          return [
                                                            PopupMenuItem(
                                                                enabled: false,
                                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                child: GetBuilder<TransactionController>(
                                                                    builder: (transactionController) {
                                                                      return Column(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: PopupMenuButton(
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                                                  offset: const Offset(0, 50),
                                                                                  color: notifire.getContainerColor,
                                                                                  child: Container(
                                                                                    height: 48,
                                                                                    padding: const EdgeInsets.all(8),
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(12),
                                                                                      border: Border.all(color: notifire.getGry700_300Color),
                                                                                    ),
                                                                                    child: Row(
                                                                                      children: [
                                                                                        Text(transactionController.transactionMenu[transactionController.selectIsTransactionMenu], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                                                        ),
                                                                                        const Spacer(),
                                                                                        SvgPicture.asset("assets/images/chevron-down.svg", height: 20, width: 20,)
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  itemBuilder: (context) {
                                                                                    return [
                                                                                      PopupMenuItem(

                                                                                          child:
                                                                                          SizedBox(
                                                                                            height: 70,
                                                                                            width: 110,
                                                                                            child: ListView.builder(
                                                                                              itemCount: transactionController.type.length,
                                                                                              shrinkWrap: true,
                                                                                              itemBuilder: (context, index) {
                                                                                                return Column(
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                        onTap: () {
                                                                                                          transactionController.setSelectIsisTransactionMenu(index);
                                                                                                          Get.back();
                                                                                                        },
                                                                                                        child: Text(transactionController.transactionMenu[index],style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),)),
                                                                                                    const SizedBox(height: 10,),
                                                                                                  ],
                                                                                                );

                                                                                              },),)),
                                                                                    ];
                                                                                  },),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 12,),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 48,
                                                                                  padding: const EdgeInsets.all(8),
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    border: Border.all(color: notifire.getGry700_300Color),
                                                                                  ),
                                                                                  child: Center(
                                                                                    child: TextField(
                                                                                      style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                                                                                      decoration: InputDecoration(
                                                                                          hintText: "Minimum",
                                                                                          hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                                          border: InputBorder.none,isDense: true),),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 12,),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 48,
                                                                                  padding: const EdgeInsets.all(8),
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    border: Border.all(color: notifire.getGry700_300Color),
                                                                                  ),
                                                                                  child: Center(
                                                                                    child: TextField(
                                                                                      style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                                                                                      decoration: InputDecoration(
                                                                                          hintText: "Maximum",
                                                                                          hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                                          border: InputBorder.none,isDense: true),),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 24,),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: ElevatedButton(
                                                                                    style: ElevatedButton.styleFrom(
                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                                                      elevation: 0,
                                                                                      fixedSize: const Size.fromHeight(48),
                                                                                      backgroundColor: priMeryColor,
                                                                                    ),
                                                                                    onPressed: () {
                                                                                      Get.back();

                                                                                    }, child: Text("Apply",style: Typographyy.bodyMediumExtraBold.copyWith(color: Colors.white),)),
                                                                              )
                                                                            ],
                                                                          ),

                                                                        ],
                                                                      );
                                                                    }
                                                                )),
                                                          ];

                                                        },)
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Date",
                                                        style: Typographyy
                                                            .bodyMediumExtraBold
                                                            .copyWith(
                                                            color: notifire
                                                                .getGry500_600Color),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      PopupMenuButton(
                                                        constraints: const BoxConstraints(
                                                          maxWidth: 200,
                                                          minWidth: 200,
                                                        ),
                                                        onOpened: () {
                                                          transactionController.setIsDateMenu(true);
                                                        },
                                                        onCanceled: () {
                                                          transactionController.setIsDateMenu(false);
                                                        },
                                                        color: notifire.getContainerColor,
                                                        tooltip: "",
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                        offset: const Offset(0, 55),
                                                        child: Container(
                                                          height: 48,
                                                          width: 200,
                                                          padding: const EdgeInsets.all(12),
                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                                            border: Border.all(color: transactionController.isDateMenu? priMeryColor :  notifire.getGry700_300Color),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Text(transactionController.dateMenu[transactionController.selectIsDateMenu], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                              ),
                                                              const Spacer(),
                                                              SvgPicture.asset(transactionController.isDateMenu?  "assets/images/chevron-up.svg" :"assets/images/chevron-down.svg", height: 20, width: 20,)
                                                            ],
                                                          ),
                                                        ),
                                                        itemBuilder: (context) {
                                                          return [
                                                            PopupMenuItem(
                                                                enabled: false,
                                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                child: GetBuilder<TransactionController>(
                                                                    builder: (transactionController) {
                                                                      return  SizedBox(
                                                                        height: 70,
                                                                        width: 110,
                                                                        child: ListView.builder(
                                                                          itemCount: transactionController.dateMenu.length,
                                                                          shrinkWrap: true,
                                                                          itemBuilder: (context, index) {
                                                                            return Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                InkWell(
                                                                                    onTap: () {
                                                                                      transactionController.setSelectIsDateMenu(index);
                                                                                      Get.back();
                                                                                    },
                                                                                    child: Text(transactionController.dateMenu[index],style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),)),
                                                                                const SizedBox(height: 10,),
                                                                              ],
                                                                            );

                                                                          },),);
                                                                    }
                                                                )),
                                                          ];

                                                        },)
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Amount & Currencies",
                                                        style: Typographyy
                                                            .bodyMediumExtraBold
                                                            .copyWith(
                                                            color: notifire
                                                                .getGry500_600Color),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      PopupMenuButton(
                                                        constraints: const BoxConstraints(
                                                          maxWidth: 250,
                                                          minWidth: 250,
                                                        ),
                                                        onOpened: () {
                                                          transactionController.setIsAmountMenu(true);
                                                        },
                                                        onCanceled: () {
                                                          transactionController.setIsAmountMenu(false);
                                                        },
                                                        color: notifire.getContainerColor,
                                                        tooltip: "",
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                        offset: const Offset(0, 55),
                                                        child: Container(
                                                          height: 48,
                                                          width: 200,
                                                          padding: const EdgeInsets.all(12),
                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                                            border: Border.all(color: transactionController.isAmountMenu? priMeryColor :  notifire.getGry700_300Color),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Text(transactionController.amountMenu[transactionController.selectIsAmountMenu], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                              ),
                                                              const Spacer(),
                                                              SvgPicture.asset(transactionController.isAmountMenu?  "assets/images/chevron-up.svg" :"assets/images/chevron-down.svg", height: 20, width: 20,)
                                                            ],
                                                          ),
                                                        ),
                                                        itemBuilder: (context) {
                                                          return [
                                                            PopupMenuItem(
                                                                enabled: false,
                                                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                                                child: GetBuilder<TransactionController>(
                                                                    builder: (transactionController) {
                                                                      return Column(
                                                                        mainAxisSize: MainAxisSize.min,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: PopupMenuButton(
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                                                  offset: const Offset(0, 50),
                                                                                  color: notifire.getContainerColor,
                                                                                  child: Container(
                                                                                    height: 48,
                                                                                    padding: const EdgeInsets.all(8),
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(12),
                                                                                      border: Border.all(color: notifire.getGry700_300Color),
                                                                                    ),
                                                                                    child: Row(
                                                                                      children: [
                                                                                        Text(transactionController.amountMenu[transactionController.selectIsAmountMenu], style: Typographyy.bodyMediumMedium.copyWith(color:  notifire.getGry500_600Color),
                                                                                        ),
                                                                                        const Spacer(),
                                                                                        SvgPicture.asset("assets/images/chevron-down.svg", height: 20, width: 20,)
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  itemBuilder: (context) {
                                                                                    return [
                                                                                      PopupMenuItem(

                                                                                          child:
                                                                                          SizedBox(
                                                                                            height: 70,
                                                                                            width: 110,
                                                                                            child: ListView.builder(
                                                                                              itemCount: transactionController.amountMenu.length,
                                                                                              shrinkWrap: true,
                                                                                              itemBuilder: (context, index) {
                                                                                                return Column(
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                        onTap: () {
                                                                                                          transactionController.setSelectIsAmountMenu(index);
                                                                                                          Get.back();
                                                                                                        },
                                                                                                        child: Text(transactionController.amountMenu[index],style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),)),
                                                                                                    const SizedBox(height: 10,),
                                                                                                  ],
                                                                                                );

                                                                                              },),)),
                                                                                    ];
                                                                                  },),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 12,),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 48,
                                                                                  padding: const EdgeInsets.all(8),
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    border: Border.all(color: notifire.getGry700_300Color),
                                                                                  ),
                                                                                  child: Center(
                                                                                    child: TextField(
                                                                                      style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                                                                                      decoration: InputDecoration(
                                                                                          hintText: "Minimum",
                                                                                          hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                                          border: InputBorder.none,isDense: true),),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 12,),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 48,
                                                                                  padding: const EdgeInsets.all(8),
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    border: Border.all(color: notifire.getGry700_300Color),
                                                                                  ),
                                                                                  child: Center(
                                                                                    child: TextField(
                                                                                      style: Typographyy.bodyMediumMedium.copyWith(color: notifire.getTextColor),
                                                                                      decoration: InputDecoration(
                                                                                          hintText: "Maximum",
                                                                                          hintStyle: Typographyy.bodyMediumMedium.copyWith(color: notifire.getGry500_600Color),
                                                                                          border: InputBorder.none,isDense: true),),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(height: 24,),
                                                                          Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: ElevatedButton(
                                                                                    style: ElevatedButton.styleFrom(
                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                                                      elevation: 0,
                                                                                      fixedSize: const Size.fromHeight(48),
                                                                                      backgroundColor: priMeryColor,
                                                                                    ),
                                                                                    onPressed: () {
                                                                                      Get.back();

                                                                                    }, child: Text("Apply",style: Typographyy.bodyMediumExtraBold.copyWith(color: Colors.white),)),
                                                                              )
                                                                            ],
                                                                          ),

                                                                        ],
                                                                      );
                                                                    }
                                                                )),
                                                          ];

                                                        },)
                                                    ],
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ) : const SizedBox(),
                                      transactionController.isFilter ? const SizedBox(height: 20,) : const SizedBox(),
                                      Table(
                                        children: [
                                          TableRow(children: [
                                            // Divider(
                                            //   color: notifire.getGry700_300Color,height: 30,
                                            // ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                          ]),
                                          TableRow(children: [
                                            dataColumn1(
                                                title: "Name",
                                                iconpath:
                                                    "assets/images/arrows-down-up.svg",
                                                iscenter: false),
                                            dataColumn1(
                                                title: "Date",
                                                iconpath:
                                                    "assets/images/arrows-down-up.svg",
                                                iscenter: false),
                                            dataColumn1(
                                                title: "Client",
                                                iconpath:
                                                    "assets/images/arrows-down-up.svg",
                                                iscenter: false),
                                            dataColumn1(
                                                title: "Price",
                                                iconpath:
                                                    "assets/images/arrows-down-up.svg",
                                                iscenter: false),
                                            Center(
                                              child: dataColumn1(
                                                  title: "Status",
                                                  iconpath:
                                                      "assets/images/arrows-down-up.svg",
                                                  iscenter: true),
                                            ),
                                            Center(
                                              child: dataColumn1(
                                                  title: "Actions",
                                                  iconpath:
                                                      "assets/images/arrows-down-up.svg",
                                                  iscenter: true),
                                            ),
                                          ]),
                                          TableRow(children: [

                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                            Divider(
                                              color:
                                                  notifire.getGry700_300Color,
                                              height: 30,
                                            ),
                                          ]),
                                          for (var a =
                                                  invoiceController.loadmore;
                                              a <
                                                  invoiceController.loadmore +
                                                      invoiceController
                                                          .selectindex;
                                              a++)
                                            TableRow(children: [

                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(vertical: 8),
                                                child: ListTile(
                                                  title: Text(
                                                      invoiceController
                                                          .listtiletitle[a],
                                                      style: Typographyy
                                                          .bodyLargeMedium
                                                          .copyWith(
                                                              color: notifire
                                                                  .getTextColor)),
                                                  leading: CircleAvatar(
                                                      radius: 24,
                                                      backgroundColor:
                                                          priMeryColor
                                                              .withOpacity(
                                                                  0.2),
                                                      child: SvgPicture.asset(
                                                        "assets/images/receipt1.svg",
                                                        height: 22,
                                                        width: 22,
                                                      )),
                                                  dense: true,
                                                  contentPadding:
                                                      const EdgeInsets.all(0),
                                                  subtitle: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Text("INV110XXX",
                                                        style: Typographyy
                                                            .bodyMediumMedium
                                                            .copyWith(
                                                                color: notifire
                                                                    .getGry700_300Color)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(vertical: 20),
                                                child: Text(
                                                    invoiceController.date[a],
                                                    style: Typographyy
                                                        .bodyLargeSemiBold
                                                        .copyWith(
                                                            color: notifire
                                                                .getTextColor)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(vertical: 20),
                                                child: Text(
                                                    invoiceController
                                                        .clint[a],
                                                    style: Typographyy
                                                        .bodyLargeSemiBold
                                                        .copyWith(
                                                            color: notifire
                                                                .getTextColor)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(vertical: 20),
                                                child: Text(
                                                    invoiceController
                                                        .price[a],
                                                    style: Typographyy
                                                        .bodyLargeExtraBold
                                                        .copyWith(
                                                            color: notifire
                                                                .getTextColor)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(vertical: 10),
                                                child: Center(
                                                  child: Container(
                                                      height: 40,
                                                      width: 96,
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color:
                                                            invoiceController
                                                                .iteamcolor[a]
                                                                .withOpacity(
                                                                    0.10),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                              invoiceController
                                                                  .status[a],
                                                              style: Typographyy
                                                                  .bodyMediumMedium
                                                                  .copyWith(
                                                                      color: invoiceController
                                                                          .iteamcolor[a])))),
                                                ),
                                              ),
                                              PopupMenuButton(
                                                tooltip: "",
                                                color:
                                                    notifire.getDrawerColor,
                                                offset: const Offset(30, 52),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 20,
                                                          top: 20,
                                                          bottom: 20),
                                                  child: Center(
                                                    child: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8),
                                                          color: Colors
                                                              .transparent,
                                                          border: Border.all(
                                                              color: notifire
                                                                  .getGry500_600Color)),
                                                      child: Center(
                                                          child: SvgPicture
                                                              .asset(
                                                        "assets/images/dots-vertical.svg",
                                                        height: 20,
                                                        width: 20,
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                                itemBuilder: (context) {
                                                  return [
                                                    PopupMenuItem(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8),
                                                        child: Column(
                                                          children: [
                                                            _buildRow(
                                                                iconpath:
                                                                    "assets/images/copy.svg",
                                                                title:
                                                                    "Copy"),
                                                            const SizedBox(
                                                              height: 8,
                                                            ),
                                                            _buildRow(
                                                                iconpath:
                                                                    "assets/images/printer.svg",
                                                                title:
                                                                    "Print"),
                                                            const SizedBox(
                                                              height: 8,
                                                            ),
                                                            _buildRow(
                                                                iconpath:
                                                                    "assets/images/file-download.svg",
                                                                title:
                                                                    "Download PDF"),
                                                            const SizedBox(
                                                              height: 8,
                                                            ),
                                                            _buildRow(
                                                                iconpath:
                                                                    "assets/images/share-two.svg",
                                                                title:
                                                                    "Share Link"),
                                                            const SizedBox(
                                                              height: 8,
                                                            ),
                                                            _buildRow(
                                                                iconpath:
                                                                    "assets/images/archive.svg",
                                                                title:
                                                                    "Archive"),
                                                          ],
                                                        ))
                                                  ];
                                                },
                                              ),
                                            ]),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      );
    });
  }

  Widget _exports() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          fixedSize: const Size.fromHeight(42),
          backgroundColor: notifire.getBgColor,
          side: BorderSide(color: notifire.getGry700_300Color),
        ),
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset("assets/images/share.svg",
                height: 20, width: 20, color: notifire.getTextColor),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Exports",
              style: Typographyy.bodyMediumExtraBold
                  .copyWith(color: notifire.getTextColor),
            )
          ],
        ));
  }

  Widget _filters() {
    return GetBuilder<TransactionController>(builder: (transactionController) {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fixedSize: const Size.fromHeight(42),
            backgroundColor: notifire.getBgColor,
            side: BorderSide(
                color: transactionController.isFilter
                    ? priMeryColor
                    : notifire.getGry700_300Color),
          ),
          onPressed: () {
            transactionController.setIsFilter(true);
          },
          child: Row(
            children: [
              SvgPicture.asset("assets/images/Filter.svg",
                  height: 20,
                  width: 20,
                  color: transactionController.isFilter
                      ? priMeryColor
                      : notifire.getTextColor),
              const SizedBox(
                width: 8,
              ),
              Text(
                "Filters",
                style: Typographyy.bodyMediumExtraBold.copyWith(
                    color: transactionController.isFilter
                        ? priMeryColor
                        : notifire.getTextColor),
              )
            ],
          ));
    });
  }

  Widget dataColumn1(
      {required String title,
      required String iconpath,
      required bool iscenter}) {
    return Row(
      mainAxisAlignment:
          iscenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Text(title,
            style: Typographyy.bodyLargeExtraBold
                .copyWith(color: notifire.getGry500_600Color)),
        const SizedBox(
          width: 16,
        ),
        SizedBox(
            height: 16,
            width: 16,
            child: Center(
                child: SvgPicture.asset(iconpath,
                    height: 22,
                    width: 22,
                    color: notifire.getGry500_600Color))),
      ],
    );
  }

  Widget _buildRow({required String iconpath, required String title}) {
    return Row(
      children: [
        SvgPicture.asset(iconpath,
            width: 20, height: 20, color: notifire.getGry500_600Color),
        const SizedBox(
          width: 10,
        ),
        Text(title,
            style: Typographyy.bodySmallSemiBold
                .copyWith(color: notifire.getGry500_600Color)),
      ],
    );
  }
}
