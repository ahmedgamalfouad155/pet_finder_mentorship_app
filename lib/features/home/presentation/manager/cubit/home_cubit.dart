import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:cat_api/features/home/data/service/home_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeService}) : super(HomeInitial());

  final HomeService homeService;

  Future<void> getCatBreeds() async {
    try {
      emit(HomeLoading());
      final catBreeds = await homeService.getAnimals();
      emit(HomeSuccess(catBreeds));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
}
