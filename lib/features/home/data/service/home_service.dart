import 'package:cat_api/core/constants/api_end_points.dart';
import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:dio/dio.dart';

abstract class HomeService {
  Future<List<CatBreedModel>> getAnimals();
}

class HomeServiceImpl extends HomeService {
  final Dio dio;

  HomeServiceImpl({required this.dio});
  @override
  Future<List<CatBreedModel>> getAnimals() {
    final response = dio.get(
      ApiEndPoints.animals,
      options: Options(headers: {"Content-Type": "application/json"}),
    );
    return response.then(
      (value) =>
          (value.data as List).map((e) => CatBreedModel.fromJson(e)).toList(),
    );
  }
}
