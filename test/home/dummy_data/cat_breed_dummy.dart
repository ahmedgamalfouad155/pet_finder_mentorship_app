import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:cat_api/features/home/data/models/weight_model.dart';

final dummyCatBreeds = [
  CatBreedModel(
    id: "abc123",
    name: "Persian",
    location: "Cairo, Egypt",
    description: "The Persian is a long-haired breed of cat characterized by its round face and short muzzle.",
    age: "5 - 10",
    imageId: "0XYvRd7oD",
    weight: WeightModel(imperial: "7 - 10", metric: "3 - 5"),
  ),
  CatBreedModel(
    id: "xyz456",
    name: "Siamese",
    location: "Bangkok, Thailand",
    description: "The Siamese cat is one of the first distinctly recognized breeds of Asian cat.",
    age: "8 - 12",
    imageId: "MTY3ODIyMQ",
    weight: WeightModel(imperial: "6 - 10", metric: "3 - 4.5"),
  ),
];
