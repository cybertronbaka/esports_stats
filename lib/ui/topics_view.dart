import 'package:esports_stats/data/topics.dart';
import 'package:esports_stats/widgets/topic_item.dart';
import 'package:flutter/material.dart';

class TopicsView extends StatefulWidget{
  const TopicsView({Key? key}) : super(key: key);  @override

  State<TopicsView> createState() => _TopicsViewState();
}

class _TopicsViewState extends State<TopicsView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(45, 47, 57, 1),
        title: const Center(
          child: Text(
            'eSports Stats',
            style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        )
      ),
      body: Column(
        children: [
          Container(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: List.generate(
                Topics.topics.length,
                (index) => TopicItem(
                  title: Topics.topics[index],
                  children: Topics.children[index]
                )
              )
            )
          )
        ],
      )
    );
  }
}
