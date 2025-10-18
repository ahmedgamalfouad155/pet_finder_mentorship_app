import 'package:cat_api/core/extentions/image_extenteion.dart';
import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/customs_box_decoratino.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/utils/media_query_values.dart';
import 'package:cat_api/features/details/presentation/presentation/details_screen.dart';
import 'package:cat_api/features/home/data/models/cat_breed_model.dart';
import 'package:flutter/material.dart';

class AnimalItemWidget extends StatelessWidget {
  const AnimalItemWidget({super.key, required this.data});
  final CatBreedModel data;

  @override
  Widget build(BuildContext context) {
    final imageUrl = data.imageId.toCatImageUrl;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailsScreen(data: data)),
        );
      },
      child: Container(
        width: context.width,
        height: context.height / 5,
        padding: EdgeInsets.symmetric(
          horizontal: context.width * 0.05,
          vertical: context.height * 0.01,
        ),
        decoration: CustomsBoxDecoration().defaultBoxDecoration(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                width: context.width * 0.3,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          data.name,
                          style: AppStyles.textStyle18(context),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      Icon(
                        Icons.favorite_border,
                        color: context.appColors.teal,
                      ),
                    ],
                  ),
                  Text("Female", style: AppStyles.textStyle12(context)),
                  Text("5 Months Old", style: AppStyles.textStyle12(context)),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      Text(
                        data.location,
                        style: AppStyles.textStyle12(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
