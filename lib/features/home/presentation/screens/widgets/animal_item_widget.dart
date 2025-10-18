import 'package:cat_api/core/constants/images.dart';
import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/customs_box_decoratino.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/utils/media_query_values.dart';
import 'package:cat_api/features/details/presentation/presentation/details_screen.dart';
import 'package:flutter/material.dart';

class AnimalItemWidget extends StatelessWidget {
  const AnimalItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => const DetailsScreen()));
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.appColors.tealBackground,
              ),
              child: Image.asset(AppImages.dog1, width: context.width * 0.3),
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
                      Text("Joli", style: AppStyles.textStyle18(context)),

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
                        "1.6 km away",
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
