import 'package:esports_stats/miscellenous/routing_arguement.dart';
import 'package:flutter/material.dart';

class TopicItemExpanded extends StatefulWidget{
  final String title;
  final void Function()? onTap;
  final String routeArgumentKey;
  const TopicItemExpanded({
    Key? key,
    required this.title,
    required this.routeArgumentKey,
    this.onTap
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TopicItemExpandedState();
}

class _TopicItemExpandedState extends State<TopicItemExpanded>{
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/graphView', arguments: RouteArguments(widget.routeArgumentKey));
      },
      child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
          child: Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: Wrap(
                    children: const[Image(image: AssetImage('assets/topic_item_icon.png'))],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14
                      ),
                    )
                )
              ]
          )
      ),
    );
  }
}