import 'package:flutter/material.dart';
import 'package:layout_test_task/domain/mock_repository.dart';
import 'package:layout_test_task/pages/about_place_page/about_place_page.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/place_card_widget.dart';

class CitiesListView extends StatelessWidget {
  const CitiesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final place = MockRepository().getPlace();
    return SizedBox(
      height: 212,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          PlaceCardWidget(
            place: 'London',
            image: 'assets/categories/park.jpg',
            name: 'Nice park',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPlacePage(place: place),
              ),
            ),
          ),
          const SizedBox(width: 32),
          PlaceCardWidget(
            place: 'New York',
            image: 'assets/categories/park.jpg',
            name: 'Statue of liberty',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPlacePage(place: place),
              ),
            ),
          ),
          const SizedBox(width: 32),
          PlaceCardWidget(
            place: 'New York',
            image: 'assets/categories/park.jpg',
            name: 'Statue of liberty',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPlacePage(place: place),
              ),
            ),
          ),
          const SizedBox(width: 32),
        ],
      ),
    );
  }
}
