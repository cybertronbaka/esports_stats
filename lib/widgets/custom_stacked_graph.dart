import 'package:esports_stats/miscellenous/constants.dart';
import 'package:esports_stats/models/stacked_chart_schema.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomStackedGraph extends StatefulWidget{
  final StackedChartSchema schema;
  const CustomStackedGraph({
    Key? key,
    required this.schema
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomStackedGraphState();
}

class _CustomStackedGraphState extends State<CustomStackedGraph>{
  late StackedChartSchema _schema;

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

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: MediaQuery.of(context).size.height * 0.6 ,
      // color: const Color.fromRGBO(45, 47, 56, 1),
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
                      fontSize: 14
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
                      fontSize: 14
                  ),
                  majorGridLines: const MajorGridLines(width: 2, color: dullColor),
                  majorTickLines: const MajorTickLines(width: 0),
                  labelFormat: _schema.yLabel ?? '{value}',
                  axisLine: const AxisLine(width: 0)
              ),
              series: _getSeries()
          )
      ),
    );
  }

  List<StackedColumnSeries<Map<String, dynamic>, String>> _getSeries(){
    const _dataLabelSetting = DataLabelSettings(
        isVisible: true,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
        labelAlignment: ChartDataLabelAlignment.middle
    );

    return List<StackedColumnSeries<Map<String, dynamic>, String>>.generate(_schema.legends.length, (index){
      return StackedColumnSeries<Map<String, dynamic>, String>(
        dataSource: _schema.data[index],
        xValueMapper: (Map<String, dynamic> value, _) => value['x'],
        yValueMapper: (Map<String, dynamic> value, _) => value['y'],
        name: _schema.legends[index],
        pointColorMapper: (Map<String, dynamic> data, _) => barColors[index],
        borderRadius: index == _schema.legends.length - 1
            ? const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            : null,
        dataLabelSettings: _dataLabelSetting,
      );
    });
  }
}