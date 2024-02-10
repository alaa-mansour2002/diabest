import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

  List<_ChartData> chartData = [
    _ChartData(DateTime(2023, 1, 1), 25),
    _ChartData(DateTime(2023, 2, 1), 28),
    _ChartData(DateTime(2023, 3, 1), 30),
    // Add more data points here
  ];

  List<CartesianSeries<_ChartData, DateTime>> seriesList = [
    LineSeries<_ChartData, DateTime>(
      dataSource: chartData,
      xValueMapper: (_ChartData sales, _) => sales.x,
      yValueMapper: (_ChartData sales, _) => sales.y,
    ),
  ];




class LineChartPage extends StatelessWidget {
  final List<CartesianSeries<_ChartData, DateTime>> seriesList;

  LineChartPage({required this.seriesList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Chart Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SfCartesianChart(
            series: seriesList,
            primaryXAxis: DateTimeAxis(
              intervalType: DateTimeIntervalType.months,
              interval: 1,
            ),
            primaryYAxis: NumericAxis(
              title: AxisTitle(text: 'Values'),
            ),
            
          ),
        ),
      ),
    );
  }
}

class _ChartData {
  final DateTime x;
  final double y;

  _ChartData(this.x, this.y);
}
