import 'dart:developer';

import 'package:cat_api/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:cat_api/features/home/presentation/screens/widgets/animal_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfAnimalItemWidget extends StatelessWidget {
  const ListOfAnimalItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is HomeFailure) {
          log(state.errMessage);
          return Center(child: Text(state.errMessage));
        }
        if (state is HomeSuccess) {
          final data = state.catModel;
          return Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return AnimalItemWidget(
                  data: data[index],
                );
              },
            ),
          );
        }
        return const Text("Error");
      },
    );
  }
}
