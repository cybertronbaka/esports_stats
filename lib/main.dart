import 'package:esports_stats/ui/graph_view.dart';
import 'package:esports_stats/ui/topics_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eSports Stats',
      theme: ThemeData(
        backgroundColor: const Color.fromRGBO(17, 19, 22, 1),
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromRGBO(255, 125, 2, 1),
      ),
      // home: const TopicsView(),
      initialRoute: '/',
      routes: {
        '/': (context) => const TopicsView(),
        '/graphView': (context) => const GraphView()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}