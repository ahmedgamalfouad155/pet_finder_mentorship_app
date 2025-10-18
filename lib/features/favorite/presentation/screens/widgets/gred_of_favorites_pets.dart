import 'package:cat_api/features/favorite/presentation/screens/widgets/favorite_pets_item_widget.dart';
import 'package:flutter/material.dart';

class GredOfFavoritesPets extends StatelessWidget {
  const GredOfFavoritesPets({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: .89,
      ),
      itemBuilder: (context, index) => FavoritePetsItemWidet(),
    );
  }
}
