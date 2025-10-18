import 'package:cat_api/features/home/presentation/screens/widgets/animal_item_widget.dart';
import 'package:flutter/material.dart';

class ListOfAnimalItemWidget extends StatelessWidget {
  const ListOfAnimalItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 10, 
        itemBuilder: (context, index) {
          return AnimalItemWidget();
        },
      ),
    );
  }
}
