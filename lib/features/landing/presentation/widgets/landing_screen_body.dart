import 'package:cat_api/core/utils/media_query_values.dart';
import 'package:cat_api/core/widgets/default_button_widget.dart';
import 'package:cat_api/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:cat_api/features/nav_bar/presentation/view/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:cat_api/core/constants/images.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreenBody extends StatelessWidget {
  const LandingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.catDog),
          const SizedBox(height: 20.0),
          Text(
            'Find Your Best Companion With Us',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle32(context),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Join & discover the best suitable pets as per your preferences in your location',
            textAlign: TextAlign.center,
            style: AppStyles.textStyle12(context),
          ),
          SizedBox(height: context.height / 10),
          DefaultButtonWidget(
            icon: Image.asset(AppImages.icon),
            text: 'Get Started',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => NavBarCubit(),
                    child: const NavBarScreen(),
                  ),
                ),
              );
            },
            width: context.width / 1.7,
          ),
        ],
      ),
    );
  }
}
