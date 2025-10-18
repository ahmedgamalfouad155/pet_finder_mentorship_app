import 'package:cat_api/core/constants/constants.dart';
import 'package:cat_api/core/cubit/filter_cubit.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/widgets/custom_filters_widget.dart';
import 'package:cat_api/core/widgets/custom_text_field_widget.dart';
import 'package:cat_api/features/home/data/service/home_service.dart';
import 'package:cat_api/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:cat_api/features/home/presentation/screens/widgets/list_of_animal_item_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFieldWidget(hintText: "search"),
          const SizedBox(height: 10),
          Text('Categories', style: AppStyles.textStyle18(context)),
          const SizedBox(height: 10),
          BlocProvider(
            create: (context) => FilterCubit(),
            child: CustomFiltersWidget(
              padding: const EdgeInsets.only(top: 10),
              filters: filters,
              layoutType: SpecialLayoutType.wrap,
            ),
          ),
          const SizedBox(height: 20),
          BlocProvider(
            create: (context) =>
                HomeCubit(homeService: HomeServiceImpl(dio: Dio()))
                  ..getCatBreeds(),
            child: ListOfAnimalItemWidget(),
          ),
        ],
      ),
    );
  }
}
