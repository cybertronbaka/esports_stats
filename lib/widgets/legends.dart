import 'package:esports_stats/miscellenous/constants.dart';
import 'package:flutter/material.dart';

class Legends extends StatelessWidget {
  final List<String> legends;
  const Legends({
    Key? key,
    required this.legends
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int legendsCount = legends.length;
    return Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Row(
        // crossAxisCount: legendsCount < 3 ? legendsCount : 3,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(legendsCount, (index) {
            return Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: barColors[index]
                  ),
                ),
                Text(
                  legends[index],
                  style: const TextStyle(
                    color: legendTextColor,
                    fontSize: 14
                  ),
                )
              ],
            );
          })
      )
    );
  }
}