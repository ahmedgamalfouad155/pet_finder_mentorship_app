
class WeightModel {
  final String imperial;
  final String metric;

  const WeightModel({required this.imperial, required this.metric});

 

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'imperial': imperial,
      'metric': metric,
    };
  }

  factory WeightModel.fromJson(Map<String, dynamic> map) {
    return WeightModel(
      imperial: map['imperial'] as String,
      metric: map['metric'] as String,
    );
  } 
}
