import 'package:esports_stats/models/stacked_chart_schema.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MultiColumnGraph extends StatefulWidget{
  final StackedChartSchema schema;

  const MultiColumnGraph({
    Key? key,
    required this.schema
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiColumnGraphState();
}

class _MultiColumnGraphState extends State<MultiColumnGraph>{
  late StackedChartSchema _schema;
  static const _colors = [
    Color.fromRGBO(255, 125, 2, 1),
    Color.fromRGBO(172, 89, 10, 1),
    Color.fromRGBO(150, 150, 150, 1)
  ];

  @override
  void initState() {
    setState(() {
      _schema = widget.schema;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const dullColor = Color.fromRGBO(75, 78, 91, 1);
   return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: MediaQuery.of(context).size.height * 0.47,
              width: MediaQuery.of(context).size.width * 1.25,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  color: Color.fromRGBO(45, 47, 56, 1)
              ),
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: SfCartesianChart(
                      backgroundColor: const Color.fromRGBO(45, 47, 56, 1),
                      plotAreaBorderWidth: 0,
                      primaryXAxis: CategoryAxis(
                          majorGridLines: const MajorGridLines(width: 0),
                          majorTickLines: const MajorTickLines(width: 0),
                          labelStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                          axisLine: const AxisLine(width: 2, color: dullColor)
                      ),
                      primaryYAxis: NumericAxis(
                          minimum: _schema.minY,
                          maximum: _schema.maxY,
                          isVisible: true,
                          interval: _schema.yInterval,
                          labelStyle: const TextStyle(
                              color: dullColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                          majorGridLines: const MajorGridLines(width: 2, color: dullColor),
                          majorTickLines: const MajorTickLines(width: 0),
                          labelFormat: _schema.yLabel ?? '{value}',
                          axisLine: const AxisLine(width: 0)
                      ),
                      series: _getChartData()
                  )
              ),
            )
        )
    );
  }

  List<ColumnSeries<Map<String, dynamic>, String>> _getChartData(){
    const _dataLabelSetting = DataLabelSettings(
        isVisible: true,
        textStyle: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold
        ),
        labelAlignment: ChartDataLabelAlignment.middle
    );

    return List<ColumnSeries<Map<String, dynamic>, String>>.generate(_schema.legends.length, (index){
      return ColumnSeries<Map<String, dynamic>, String>(
        dataSource: _schema.data[index],
        xValueMapper: (Map<String, dynamic> value, _) => value['x'],
        yValueMapper: (Map<String, dynamic> value, _) => value['y'],
        name: _schema.legends[index],
        spacing: 0.3,
        pointColorMapper: (Map<String, dynamic> data, _) => _colors[index],
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
        dataLabelSettings: _dataLabelSetting,
      );
    });
  }
}