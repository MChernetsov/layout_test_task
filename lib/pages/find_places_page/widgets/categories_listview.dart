import 'package:flutter/material.dart';
import 'package:layout_test_task/domain/mock_repository.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/category_widget.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = MockRepository().getCategories();

    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryWidget(
          text: categories[index].name,
          image: categories[index].image,
        ),
        separatorBuilder: (
          context,
          index,
        ) =>
            const SizedBox(
          width: 16,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
