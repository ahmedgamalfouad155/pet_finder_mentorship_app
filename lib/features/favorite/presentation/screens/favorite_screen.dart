import 'package:cat_api/core/theme/styles.dart';
import 'package:cat_api/features/favorite/presentation/screens/widgets/favorite_screen_body.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          "Your Favorite Pets",
          style: AppStyles.textStyle22(context),
        ),
      ),
      body: FavoriteScreenBody(),
    );
  }
}
