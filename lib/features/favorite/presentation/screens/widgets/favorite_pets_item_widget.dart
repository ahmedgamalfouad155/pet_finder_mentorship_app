import 'package:cat_api/core/constants/images.dart';
import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/customs_box_decoratino.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class FavoritePetsItemWidet extends StatelessWidget {
  const FavoritePetsItemWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: CustomsBoxDecoration().defaultBoxDecoration(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: context.height / 7,
            width: context.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.appColors.tealBackground,
            ),
            child: Image.asset(AppImages.cat),
          ),
          // const SizedBox(height: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Joil', style: AppStyles.textStyle16(context)),
                    // const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: Colors.red),
                        Text(
                          '1.6 km away',
                          style: AppStyles.textStyle12(context),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.favorite, color: context.appColors.teal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
