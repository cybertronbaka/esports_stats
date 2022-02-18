import 'package:esports_stats/models/column_chart_schema.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomBarGraph extends StatefulWidget{
  final ColumnChartSchema schema;

  const CustomBarGraph({
    Key? key,
    required this.schema
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomBarGraphState();
}

class _CustomBarGraphState extends State<CustomBarGraph>{
  late ColumnChartSchema schema;

  @override
  void initState() {
    setState(() {
      schema = widget.schema;
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
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 2,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    color: Color.fromRGBO(45, 47, 56, 1)
                ),
                child: SfCartesianChart(
                    backgroundColor: const Color.fromRGBO(45, 47, 56, 1),
                    plotAreaBorderWidth: 0,
                    isTransposed: true,
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
                        minimum: schema.minY,
                        maximum: schema.maxY,
                        isVisible: true,
                        interval: schema.yInterval,
                        labelStyle: const TextStyle(
                            color: dullColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                        majorGridLines: const MajorGridLines(width: 2, color: dullColor),
                        majorTickLines: const MajorTickLines(width: 0),
                        labelFormat: schema.yLabel ?? '{value}',
                        axisLine: const AxisLine(width: 0)
                    ),
                    series: <ChartSeries>[
                      ColumnSeries<Map<String, dynamic>, String>(
                        dataSource: schema.data,
                        xValueMapper: (Map<String, dynamic> value, _) => value['x'],
                        yValueMapper: (Map<String, dynamic> value, _) => value['y'],
                        pointColorMapper: (Map<String, dynamic> data, _) => Theme.of(context).primaryColor,
                        dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                            labelAlignment: ChartDataLabelAlignment.middle
                        ),
                        borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                      )
                    ]
                )
            )
        )
    );
  }
}