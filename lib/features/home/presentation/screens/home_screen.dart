import 'package:cat_api/core/theme/colors.dart';
import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/features/home/presentation/screens/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find your Favorite pet',
          style: AppStyles.textStyle24(context),
        ),
        backgroundColor: context.appColors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),

      body: HomeScreenBody(),
    );
  }
}
