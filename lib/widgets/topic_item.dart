import 'package:esports_stats/widgets/topic_item_expanded_child.dart';
import 'package:flutter/material.dart';

class TopicItem extends StatefulWidget{
  final String title;
  final void Function()? onTap;
  final List<Map<String, String>> children;

  const TopicItem({
    Key? key,
    required this.title,
    required this.children,
    this.onTap,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TopicItemState();
}

class _TopicItemState extends State<TopicItem>{
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        GestureDetector(
          onTap: (){
            widget.onTap;
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: Container(
              decoration: _expanded ? null : const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(39, 39, 39, 1),
                    width: 1.0
                  )
                )
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                child: Row(
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      _expanded ? Icons.remove : Icons.add,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              )
          ),
        ),
        _expanded ? ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: List.generate(
            widget.children.length,
            (index) => TopicItemExpanded(
              title: widget.children[index]['title'] ?? '',
              routeArgumentKey: widget.children[index]['key'] ?? '',
            )
          )
        ) : Container(),
        Container(
          decoration: !_expanded ? null : const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(39, 39, 39, 1),
                width: 1.0
              )
            )
          ),
        )
      ],
    );
  }
}