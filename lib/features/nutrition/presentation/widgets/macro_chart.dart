import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MacroChart extends StatefulWidget {
  const MacroChart({super.key});

  @override
  _MacroChartState createState() => _MacroChartState();
}

class _MacroChartState extends State<MacroChart> {
  String selectedMacro = 'Calories'; // Default selected macro
  List<String> macros = ['Calories', 'Protein', 'Carbs', 'Fats'];

  // Sample macro data for a week (Sunday to Saturday)
  Map<String, List<double>> weeklyData = {
    'Calories': [2000, 1800, 2200, 2100, 2000, 2300, 2000],
    'Protein': [200, 180, 210, 200, 195, 230, 205],
    'Carbs': [250, 230, 280, 260, 240, 300, 270],
    'Fats': [80, 70, 85, 90, 75, 95, 85],
  };

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double chartWidth = constraints.maxWidth;
        double chartHeight = chartWidth * 0.6; // Maintain a proportional height

        return const Column(
          children: [
            Text("Chart"),
            // Chart
            // Container(
            //   width: chartWidth,
            //   height: chartHeight,
            //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   child: BarChart(
            //     BarChartData(
            //       maxY: weeklyData[selectedMacro]!
            //               .reduce((a, b) => a > b ? a : b) +
            //           10,
            //       barGroups: List.generate(7, (index) {
            //         return BarChartGroupData(
            //           x: index,
            //           barRods: [
            //             BarChartRodData(
            //               y: weeklyData[selectedMacro]![index],
            //               colors: [Colors.orange],
            //               width: 16.0,
            //               borderRadius: BorderRadius.circular(4),
            //             ),
            //           ],
            //         );
            //       }),
            //       titlesData: FlTitlesData(
            //         bottomTitles: SideTitles(
            //           showTitles: true,
            //           getTitles: (value) {
            //             const days = [
            //               'Sun',
            //               'Mon',
            //               'Tue',
            //               'Wed',
            //               'Thu',
            //               'Fri',
            //               'Sat'
            //             ];
            //             return days[value.toInt()];
            //           },
            //         ),
            //         leftTitles: SideTitles(
            //           showTitles: true,
            //           reservedSize: 40,
            //           getTitles: (value) => '${value.toInt()}',
            //         ),
            //       ),
            //       borderData: FlBorderData(show: false),
            //       gridData: FlGridData(show: false),
            //     ),
            //   ),
            // ),

            // // Toggle Buttons for Macros
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: macros.map((macro) {
            //       return ChoiceChip(
            //         label: Text(macro),
            //         selected: selectedMacro == macro,
            //         onSelected: (isSelected) {
            //           setState(() {
            //             selectedMacro = macro;
            //           });
            //         },
            //       );
            //     }).toList(),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
