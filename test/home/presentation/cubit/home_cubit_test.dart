import 'package:bloc_test/bloc_test.dart';
import 'package:cat_api/features/home/data/service/home_service.dart';
import 'package:cat_api/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../dummy_data/cat_breed_dummy.dart';


class MockHomeService extends Mock implements HomeService {}

void main() {
  late MockHomeService mockHomeService;
  late HomeCubit homeCubit;

  setUp(() {
    mockHomeService = MockHomeService();
    homeCubit = HomeCubit(homeService: mockHomeService);
  });

  blocTest<HomeCubit, HomeState>(
    '✅ emits [HomeLoading, HomeSuccess] when getCatBreeds succeeds',
    build: () {
      when(() => mockHomeService.getAnimals())
          .thenAnswer((_) async => dummyCatBreeds);
      return homeCubit;
    },
    act: (cubit) => cubit.getCatBreeds(),
    expect: () => [isA<HomeLoading>(), isA<HomeSuccess>()],
  );

  blocTest<HomeCubit, HomeState>(
    '❌ emits [HomeLoading, HomeFailure] when getCatBreeds throws',
    build: () {
      when(() => mockHomeService.getAnimals())
          .thenThrow(Exception('Error fetching'));
      return homeCubit;
    },
    act: (cubit) => cubit.getCatBreeds(),
    expect: () => [isA<HomeLoading>(), isA<HomeFailure>()],
  );
}
