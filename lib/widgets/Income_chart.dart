import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {


  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
          getPieChartData()
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
            selectedIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            // title: "Design Service",
            showTitle: false,
            radius: selectedIndex == 0? 60:50,
            color: Color(0xFF208CC8),
            value: 40,
          ), PieChartSectionData(
            // title: "Design product",
            showTitle: false,
            radius: selectedIndex == 1? 60:50,
            color: Color(0xFF4EB7F2),
            value: 25,
          ), PieChartSectionData(
            // title: "Product royalty",
            radius: selectedIndex == 2? 60:50,
            showTitle: false,
            color: Color(0xFF064061),
            value: 20,
          ), PieChartSectionData(
            // title: "Other",
            showTitle: false,
            radius: selectedIndex == 3? 60:50,
            color: Color(0xFFE2DECD),
            value: 22,
          ),
        ]
    );
  }
}


