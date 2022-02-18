class ColumnChartSchema {
  final double minY;
  final double maxY;
  final double yInterval;
  final List<Map<String, dynamic>> data;
  final String? yLabel;

  ColumnChartSchema({
    required this.data,
    required this.yInterval,
    required this.maxY,
    required this.minY,
    this.yLabel
  });

  static ColumnChartSchema fromMap(Map<String, dynamic> data){
    return ColumnChartSchema(
      data: data['data'],
      yInterval: data['yInterval'],
      maxY: data['yMax'],
      minY: data['yMin'],
      yLabel: data['yLabel']
    );
  }
}