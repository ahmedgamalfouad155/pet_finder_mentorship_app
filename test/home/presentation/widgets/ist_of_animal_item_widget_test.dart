import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:cat_api/features/home/data/service/home_service.dart';
import 'package:cat_api/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:cat_api/features/home/presentation/screens/widgets/list_of_animal_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../dummy_data/cat_breed_dummy.dart';

void main() {
  group('🧩 ListOfAnimalItemWidget Tests', () {
    testWidgets('🌀 shows CircularProgressIndicator when state is HomeLoading', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
            create: (_) => HomeCubit(homeService: FakeService())..emit(HomeLoading()),
            child: const ListOfAnimalItemWidget(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('✅ shows list when state is HomeSuccess', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
            create: (_) => HomeCubit(homeService: FakeService())
              ..emit(HomeSuccess(dummyCatBreeds)),
            child: const ListOfAnimalItemWidget(),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Persian'), findsOneWidget);
      expect(find.text('Siamese'), findsOneWidget);
    });

    testWidgets('❌ shows error message when state is HomeFailure', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
            create: (_) => HomeCubit(homeService: FakeService())
              ..emit(HomeFailure('Error fetching')),
            child: const ListOfAnimalItemWidget(),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Error fetching'), findsOneWidget);
    });
  });
}

class FakeService extends HomeService {
  @override
  Future<List<CatBreedModel>> getAnimals() async => [];
}
