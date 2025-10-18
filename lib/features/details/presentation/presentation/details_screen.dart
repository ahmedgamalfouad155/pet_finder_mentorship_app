import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/details_screen_body.dart';
import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.data});
  final CatBreedModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appColors.tealBackground,
        iconTheme: IconThemeData(color: context.appColors.teal),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: context.appColors.teal),
          ),
        ],
      ),
      body: DetailsScreenBody(data: data),
    );
  }
}
