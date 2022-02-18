import 'package:esports_stats/data/graph_data.dart';
import 'package:esports_stats/miscellenous/routing_arguement.dart';
import 'package:esports_stats/models/column_chart_schema.dart';
import 'package:esports_stats/models/stacked_chart_schema.dart';
import 'package:esports_stats/widgets/custom_bar_graph.dart';
import 'package:esports_stats/widgets/custom_column_graph.dart';
import 'package:esports_stats/widgets/custom_stacked_graph.dart';
import 'package:esports_stats/widgets/legends.dart';
import 'package:esports_stats/widgets/multi_column_graph.dart';
import 'package:flutter/material.dart';

class GraphView extends StatefulWidget{
  const GraphView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GraphViewState();
}

class _GraphViewState extends State<GraphView>{
  var _data = {};
  final Widget _defaultWidget = const Text('Could not find.', style: TextStyle(color: Colors.white));
  List<String> _legends = [];

  Widget graph = Container();
  @override
  Widget build(BuildContext context) {
    final RouteArguments args = ModalRoute.of(context)?.settings.arguments as RouteArguments;
    setupGraph(args);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(45, 47, 57, 1),
        title: Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.2, 0, 0, 0),
          child: const Text(
            'Article',
            style: TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
        )
        ),
      body: _data['title'] != null ? _buildGraphView(context) : _defaultWidget
    );
  }

  Widget _buildGraphView(BuildContext context){
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Text(
            _data['title'],
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        ),
        _data['subtitle'] != null ? Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              _data['subtitle'],
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ) : Container(),
        const SizedBox(height: 30),
        graph,
        _legends.isNotEmpty ? Legends(legends: _legends) : Container()
      ]
    );
  }

  void setupGraph(args){
    var data = graphData[args.key];
    Widget graph = _defaultWidget;
    List<String> legends = [];
    switch(data!['graphType']){
      case 'column':
        ColumnChartSchema schema = ColumnChartSchema.fromMap(data);
        graph = CustomColumnGraph(schema: schema);
        break;
      case 'bar':
        ColumnChartSchema schema = ColumnChartSchema.fromMap(data);
        graph = CustomBarGraph(schema: schema);
        break;
      case 'stacked':
        StackedChartSchema schema = StackedChartSchema.fromMap(data);
        graph = CustomStackedGraph(schema: schema);
        legends = schema.legends;
        break;
      case 'multiColumn':
        StackedChartSchema schema = StackedChartSchema.fromMap(data);
        graph = MultiColumnGraph(schema: schema);
        legends = schema.legends;
    }
    setState(() {
      _data = data;
      _legends = legends;
      this.graph = graph;
    });
  }
}