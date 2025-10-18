import 'weight_model.dart';

class CatBreedModel {
  final String id;
  final String name;
  final String location;
  final String description;
  final String age;
  final String imageId;
  final WeightModel weight;

  const CatBreedModel({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.age,
    required this.imageId,
    required this.weight,
  });

  // / 🔗 Getter جاهز يرجّع رابط الصورة مباشرة من الـ API
  // String get imageUrl =>
  // 'https://cdn2.thecatapi.com/images/$referenceImageId.jpg';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'origin': location,
      'description': description,
      'life_span': age,
      'reference_image_id': imageId,
      'weight': weight.toJson(),
    };
  }

  factory CatBreedModel.fromJson(Map<String, dynamic> map) {
    return CatBreedModel(
      id: map['id'] as String,
      name: map['name'] as String,
      location: map['origin'] as String,
      description: map['description'] as String,
      age: map['life_span'] as String,
      imageId: map['reference_image_id'] as String,
      weight: WeightModel.fromJson(map['weight'] as Map<String, dynamic>),
    );
  }
}
