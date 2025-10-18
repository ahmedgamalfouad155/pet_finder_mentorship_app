import 'package:cat_api/features/home/data/service/home_service.dart';
import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:cat_api/core/constants/api_end_points.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late HomeServiceImpl service;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    service = HomeServiceImpl(dio: mockDio);
  });

  test('✅ should return list of CatBreedModel when dio request is successful', () async {
    when(() => mockDio.get(ApiEndPoints.animals, options: any(named: 'options')))
        .thenAnswer((_) async => Response(
              data: [
                {
                  "id": "abc123",
                  "name": "Persian",
                  "origin": "Cairo, Egypt",
                  "description": "Fluffy and calm.",
                  "life_span": "5 - 10",
                  "reference_image_id": "0XYvRd7oD",
                  "weight": {"imperial": "7 - 10", "metric": "3 - 5"}
                },
              ],
              statusCode: 200,
              requestOptions: RequestOptions(path: ApiEndPoints.animals),
            ));

    final result = await service.getAnimals();

    expect(result, isA<List<CatBreedModel>>());
    expect(result.first.name, 'Persian');
    expect(result.first.weight.metric, '3 - 5');
  });

  test('❌ should throw exception when dio throws error', () async {
    when(() => mockDio.get(any(), options: any(named: 'options')))
        .thenThrow(Exception('Network error'));

    expect(() => service.getAnimals(), throwsA(isA<Exception>()));
  });
}
