import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:flutter/material.dart';

class NameAndPriceWidget extends StatelessWidget {
  const NameAndPriceWidget({super.key, required this.name, required this.location});

  final String name ,location; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: AppStyles.textStyle22(context)),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 5),
                Text(location),
              ],
            ),
          ],
        ),
        Text(
          "\$ 89",
          style: AppStyles.textStyle22(
            context,
          ).copyWith(color: context.appColors.teal),
        ),
      ],
    );
  }
}
