// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../ConstData/colorfile.dart';
import '../../ConstData/colorprovider.dart';
import '../../ConstData/staticdata.dart';
import '../../ConstData/typography.dart';
import 'dashboard.dart';
import 'my_wallets.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  ColorNotifire notifire = ColorNotifire();
  final List<ChartData12> chartData12 = [
    ChartData12(
        'David', 25, const Color.fromRGBO(9, 0, 136, 1).withOpacity(0.8)),
    ChartData12(
        'Steve', 38, const Color.fromRGBO(147, 0, 119, 1).withOpacity(0.8)),
    ChartData12(
        'Jack', 34, const Color.fromRGBO(228, 0, 124, 1).withOpacity(0.8)),
    ChartData12(
        'Others', 52, const Color.fromRGBO(255, 189, 57, 1).withOpacity(0.8))
  ];

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.getBgColor,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 800) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    _buildCompo1(width: constraints.maxWidth),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildCompo2(),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            );
          } else if (constraints.maxWidth < 1000) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: _buildCompo1(width: constraints.maxWidth),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: _buildCompo2(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: _buildCompo1(width: constraints.maxWidth),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: _buildCompo2(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  List<ChartData> chartData = [
    ChartData(1, 35, 0),
    ChartData(2, 23, 0),
    ChartData(3, 54, 0),
    ChartData(4, 125, 0),
    ChartData(5, 40, 0),
    ChartData(6, 120, 0),
    ChartData(7, 70, 0),
    ChartData(8, 80, 0),
    ChartData(9, 30, 0),
    ChartData(10, 70, 0),
  ];

  Widget _buildCompo1({required double width}) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: notifire.getGry50_800Color,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Overall Portfolio",
                              style: Typographyy.heading5
                                  .copyWith(color: notifire.getTextColor)),
                          const Spacer(),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  elevation: 0,
                                  side: BorderSide(color: priMeryColor),
                                  fixedSize: const Size.fromHeight(40),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(color: priMeryColor))),
                              onPressed: () {},
                              child: Text(
                                "Withdraw",
                                style: Typographyy.bodyMediumMedium
                                    .copyWith(color: priMeryColor),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          width < 500
                              ? const SizedBox()
                              : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    fixedSize: const Size.fromHeight(40),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Deposit",
                                        style: Typographyy.bodyMediumMedium
                                            .copyWith(color: Colors.white),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                        "assets/images/plus+.svg",
                                        height: 20,
                                        width: 20,
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                        ],
                      ),
                      width < 500
                          ? const SizedBox(
                              height: 10,
                            )
                          : const SizedBox(),
                      width < 500
                          ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                fixedSize: const Size.fromHeight(40),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Deposit",
                                    style: Typographyy.bodyMediumMedium
                                        .copyWith(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/plus+.svg",
                                    height: 20,
                                    width: 20,
                                    color: Colors.white,
                                  )
                                ],
                              ))
                          : const SizedBox(),
                      const SizedBox(
                        height: 24,
                      ),
                      width < 1000
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    _buildCard(
                                        title: "My Balance",
                                        price: "9,955",
                                        pr: "+12%",
                                        color: Colors.green),
                                    const Spacer(),
                                    _buildCard(
                                        title: "Investment",
                                        price: "2,050",
                                        pr: "+9%",
                                        color: Colors.green),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  children: [
                                    _buildCard(
                                        title: "Total Gain",
                                        price: "9,135",
                                        pr: "+19%",
                                        color: Colors.green),
                                    const Spacer(),
                                    _buildCard(
                                        title: "Total Loss",
                                        price: "1,115",
                                        pr: "-10%",
                                        color: Colors.red),
                                  ],
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                _buildCard(
                                    title: "My Balance",
                                    price: "9,955",
                                    pr: "+12%",
                                    color: Colors.green),
                                const Spacer(),
                                _buildCard(
                                    title: "Investment",
                                    price: "2,050",
                                    pr: "+9%",
                                    color: Colors.green),
                                const Spacer(),
                                _buildCard(
                                    title: "Total Gain",
                                    price: "9,135",
                                    pr: "+19%",
                                    color: Colors.green),
                                const Spacer(),
                                _buildCard(
                                    title: "Total Loss",
                                    price: "1,115",
                                    pr: "-10%",
                                    color: Colors.red),
                              ],
                            ),
                    ]),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: notifire.getGry50_800Color,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Overview Statistic",
                            style: Typographyy.heading5
                                .copyWith(color: notifire.getTextColor)),
                        const Spacer(),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: notifire.getGry700_800Color,
                          ),
                          child: Center(
                              child: SvgPicture.asset(
                                  "assets/images/file-text.svg",
                                  width: 20,
                                  height: 20)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: notifire.getGry700_800Color,
                          ),
                          child: Center(
                              child: SvgPicture.asset(
                            "assets/images/star.svg",
                            width: 20,
                            height: 20,
                            color: priMeryColor,
                          )),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: notifire.getGry700_800Color,
                          ),
                          child: Center(
                              child: SvgPicture.asset(
                            "assets/images/settings.svg",
                            width: 20,
                            height: 20,
                          )),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //package:syncfusion_flutter_charts/src/charts/cartesian_chart.dart
                    Row(
                      children: [
                        Expanded(
                          child: SfCartesianChart(
                            series: <CartesianSeries<dynamic, int>>[
                              ColumnSeries<ChartData, int>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) =>
                                    data.x, // Adjusted xValueMapper
                                yValueMapper: (ChartData data, _) =>
                                    data.y, // Adjusted yValueMapper
                                color: priMeryColor,
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  height: 450,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                      color: notifire.getGry50_800Color),
                  child: SizedBox(
                    width: width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: width < 1200 ? 1200 : width * 0.8,
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Transactions History".tr,
                                              style: Typographyy.heading6
                                                  .copyWith(
                                                      color: notifire
                                                          .getTextColor),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1),
                                          const Spacer(),
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color:
                                                    notifire.getContainerColor,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("View all".tr,
                                                    style: Typographyy
                                                        .bodySmallSemiBold
                                                        .copyWith(
                                                            color: notifire
                                                                .getTextColor),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SvgPicture.asset(
                                                  "assets/images/chevron-right.svg",
                                                  height: 16,
                                                  width: 16,
                                                  color: notifire.getTextColor,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Table(
                                        columnWidths: const {
                                          0: FixedColumnWidth(80),
                                        },
                                        children: [
                                          TableRow(children: [
                                            buildiconandtitle(
                                                title: "Coin",
                                                context: context),
                                            buildiconandtitle(
                                                title: "Transaction",
                                                context: context),
                                            buildiconandtitle(
                                                title: "ID", context: context),
                                            buildiconandtitle(
                                                title: "Date",
                                                context: context),
                                            buildiconandtitle(
                                                title: "Status",
                                                context: context),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Fees",
                                                    style: Typographyy
                                                        .bodyLargeMedium
                                                        .copyWith(
                                                            color: notifire
                                                                .getTextColor),
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  SvgPicture.asset(
                                                    "assets/images/Group 47984.svg",
                                                    height: 15,
                                                    width: 15,
                                                    color: notifire
                                                        .getGry600_500Color,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]),
                                          tableroww(
                                              logo: "assets/images/btc.png",
                                              price: "\$659.10 ",
                                              subtitle: "Withdraw USDT",
                                              id: "#64525152",
                                              date: "Mar 21, 2022",
                                              status: "Declined",
                                              fees: "0.52000 BTC",
                                              color: Colors.red,
                                              context: context),
                                          tableroww(
                                              logo: "assets/images/eth.png",
                                              price: "\$239.10 ",
                                              subtitle: "Withdraw USDT",
                                              id: "#24525356",
                                              date: "Mar 22, 2022",
                                              status: "Complited",
                                              fees: "0.22000 BTC",
                                              color: Colors.green,
                                              context: context),
                                          tableroww(
                                              logo: "assets/images/eth-1.png",
                                              price: "\$59.10 ",
                                              subtitle: "Withdraw USDT",
                                              id: "#11425356",
                                              date: "Mar 23, 2022",
                                              status: "Pending",
                                              fees: "1.2600 BTC",
                                              color: Colors.yellow,
                                              context: context),
                                          tableroww(
                                              logo: "assets/images/trx.png",
                                              price: "\$659.10 ",
                                              subtitle: "Withdraw USDT",
                                              id: "#74525156",
                                              date: "Mar 24, 2022",
                                              status: "Complited",
                                              fees: "0.12000 BTC",
                                              color: Colors.green,
                                              context: context),
                                          tableroww(
                                              logo: "assets/images/usdt.png",
                                              price: "\$659.10 ",
                                              subtitle: "Withdraw USDT",
                                              id: "#34524156",
                                              date: "Mar 25, 2022",
                                              status: "Declined",
                                              fees: "0.15000 BTC",
                                              color: Colors.red,
                                              context: context),
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
                  )),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCompo2() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: notifire.getGry50_800Color,
          borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 80,
          width: 200,
          child: ListTile(
            leading: const CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/images/icon33.png")),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                "Elon Musk",
                style: Typographyy.bodyMediumExtraBold
                    .copyWith(color: notifire.getTextColor),
              ),
            ),
            subtitle: Text("(OREA)",
                style: Typographyy.bodyMediumMedium
                    .copyWith(color: notifire.getGry500_600Color)),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: notifire.getGry700_800Color,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("My PortFolio",
                        style: Typographyy.bodyLargeExtraBold
                            .copyWith(color: notifire.getGry500_600Color)),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "\$ ",
                          style: Typographyy.bodyMediumMedium
                              .copyWith(color: notifire.getGry500_600Color)),
                      TextSpan(
                          text: "2,955",
                          style: Typographyy.heading3.copyWith(
                              color: notifire.getTextColor, letterSpacing: 1.5))
                    ])),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Official Website",
              style: Typographyy.bodyMediumMedium
                  .copyWith(color: notifire.getTextColor),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              "assets/images/share.svg",
              height: 20,
              width: 20,
              color: priMeryColor,
            ),
          ],
        ),
        SfCircularChart(series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartData12, String>(
              dataSource: chartData12,
              pointColorMapper: (ChartData12 data, _) => data.color,
              xValueMapper: (ChartData12 data, _) => data.x,
              yValueMapper: (ChartData12 data, _) => data.y)
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Prev Close",
                      style: Typographyy.bodyMediumExtraBold
                          .copyWith(color: notifire.getGry500_600Color)),
                  const Spacer(),
                  Text("\$29,955",
                      style: Typographyy.bodyLargeExtraBold
                          .copyWith(color: notifire.getTextColor)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("%Change",
                      style: Typographyy.bodyMediumExtraBold
                          .copyWith(color: notifire.getGry500_600Color)),
                  const Spacer(),
                  Text("\$29%",
                      style: Typographyy.bodyLargeExtraBold
                          .copyWith(color: Colors.green)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("Market Cap",
                      style: Typographyy.bodyMediumExtraBold
                          .copyWith(color: notifire.getGry500_600Color)),
                  const Spacer(),
                  Text("\$29M USD",
                      style: Typographyy.bodyLargeExtraBold
                          .copyWith(color: notifire.getTextColor)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text("PE Ratio",
                      style: Typographyy.bodyMediumExtraBold
                          .copyWith(color: notifire.getGry500_600Color)),
                  const Spacer(),
                  Text("29.28%",
                      style: Typographyy.bodyLargeExtraBold
                          .copyWith(color: notifire.getTextColor)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: priMeryColor),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fixedSize: const Size(180, 48),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sell Stock",
                    style: Typographyy.bodyMediumExtraBold
                        .copyWith(color: priMeryColor),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: priMeryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fixedSize: const Size(180, 48),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Stock",
                    style: Typographyy.bodyMediumExtraBold
                        .copyWith(color: Colors.white),
                  )),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _buildCard(
      {required String title,
      required String price,
      required String pr,
      required Color color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title,
                style: Typographyy.bodyLargeExtraBold
                    .copyWith(color: notifire.getGry500_600Color)),
            const SizedBox(
              width: 10,
            ),
            Text(
              pr,
              style: Typographyy.bodyMediumMedium.copyWith(color: color),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
            textAlign: TextAlign.start,
            text: TextSpan(children: [
              TextSpan(
                  text: "\$ ",
                  style: Typographyy.bodyMediumMedium
                      .copyWith(color: notifire.getGry500_600Color)),
              TextSpan(
                  text: "$price.00",
                  style: Typographyy.heading4.copyWith(
                      letterSpacing: 1.5, color: notifire.getTextColor)),
            ]))
      ],
    );
  }
}

class ChartData12 {
  ChartData12(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
