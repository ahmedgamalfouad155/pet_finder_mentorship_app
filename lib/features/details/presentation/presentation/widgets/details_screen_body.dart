import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/core/widgets/custom_buton.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/image_widget.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/info_widget.dart';
import 'package:cat_api/features/details/presentation/presentation/widgets/name_and_price_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NameAndPriceWidget(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    InfoWidet(title: "Gender", stubTitle: "Male"),
                    InfoWidet(title: "Age", stubTitle: "1 year"),
                    InfoWidet(title: "Weight", stubTitle: "10 kg"),
                  ],
                ),

                const SizedBox(height: 40),
                Text("About", style: AppStyles.textStyle18(context)),
                const SizedBox(height: 10),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.",
                  style: AppStyles.textStyle14(context),
                ),
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
