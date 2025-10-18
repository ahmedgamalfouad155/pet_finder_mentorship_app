import 'package:cat_api/core/extentions/image_extenteion.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/widgets/custom_buton.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/image_widget.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/info_widget.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/name_and_price_widget.dart';
import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:flutter/material.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key, required this.data});
  final CatBreedModel data;

  @override
  Widget build(BuildContext context) {
    final imageUrl = data.imageId.toCatImageUrl;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWidget(image: imageUrl),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameAndPriceWidget(name: data.name, location: data.location),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InfoWidet(title: "Gender", stubTitle: "Male"),
                    InfoWidet(title: "Age", stubTitle: data.age),
                    InfoWidet(
                      title: "Weight",
                      stubTitle: "${data.weight.imperial} kg",
                    ),
                  ],
                ),

                const SizedBox(height: 40),
                Text("About", style: AppStyles.textStyle18(context)),
                const SizedBox(height: 10),
                Text(data.description, style: AppStyles.textStyle14(context)),
                const SizedBox(height: 20),
                CustomButton(text: "Adopt me", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
