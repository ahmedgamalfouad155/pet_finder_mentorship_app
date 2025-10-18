import 'package:cat_api/core/constants/constants.dart';
import 'package:cat_api/core/cubit/filter_cubit.dart';
import 'package:cat_api/core/widgets/custom_filters_widget.dart';
import 'package:cat_api/features/favorite/presentation/screens/widgets/gred_of_favorites_pets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteScreenBody extends StatelessWidget {
  const FavoriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          BlocProvider(
            create: (context) => FilterCubit(),
            child: CustomFiltersWidget(
              padding: const EdgeInsets.only(top: 10),
              filters: filters,
              layoutType: SpecialLayoutType.wrap,
            ),
          ),
          const SizedBox(height: 10),
          const Expanded(child: GredOfFavoritesPets()),
        ],
      ),
    );
  }
}
