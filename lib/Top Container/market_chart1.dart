// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class MarketChartWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<FlSpot> generateRandomData() {
//       Random random = Random();
//       List<FlSpot> data = [];
//       for (int i = 5; i >= 0; i--) {
//         data.add(FlSpot(i.toDouble(), random.nextDouble() * 6));
//       }
//       return data;
//     }

//     return Container(
//       margin: const EdgeInsets.all(16.0),
//       padding: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'Market Performance',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 10),
//           Expanded(
//             child: LineChart(
//               LineChartData(
//                 gridData: FlGridData(show: true, drawVerticalLine: true),
//                 titlesData: FlTitlesData(
//                   leftTitles: SideTitles(showTitles: true),
//                   bottomTitles: SideTitles(
//                     showTitles: true,
//                     interval: 1,
//                     getTitles: (value) {
//                       if (value >= 0 && value <= 5) {
//                         //return '${5 - value.toInt()}';
//                       }
//                       return '';
//                     },
//                   ),
//                 ),
//                 borderData: FlBorderData(
//                   show: true,
//                   border: Border.all(
//                     color: Colors.black,
//                     width: 1,
//                   ),
//                 ),
//                 minX: 0,
//                 maxX: 5,
//                 minY: 0,
//                 maxY: 6,
//                 lineBarsData: [
//                   LineChartBarData(
//                     spots: generateRandomData(),
//                     isCurved: true,
//                     colors: [Colors.black],
//                     dotData: FlDotData(show: true),
//                     belowBarData: BarAreaData(show: false),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: List.generate(
//               6,
//               (index) => Text(
//                 '${6 - index} months ago',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
