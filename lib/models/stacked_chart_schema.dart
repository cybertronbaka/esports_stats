class StackedChartSchema {
  final double minY;
  final double maxY;
  final double yInterval;
  final List<String> legends;
  final List<List<Map<String, dynamic>>> data;
  final String? yLabel;

  StackedChartSchema({
    required this.data,
    required this.yInterval,
    required this.maxY,
    required this.minY,
    required this.legends,
    this.yLabel
  });

  static StackedChartSchema fromMap(Map<String, dynamic> data){
    return StackedChartSchema(
      data: data['data'],
      yInterval: data['yInterval'],
      maxY: data['yMax'],
      minY: data['yMin'],
      legends: data['legends'],
      yLabel: data['yLabel']
    );
  }
}