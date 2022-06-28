import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/categories_listview.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/cities_listview.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/cities_row.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/page_bottom_navigation_bar.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/search_widget.dart';
import 'package:layout_test_task/pages/find_places_page/widgets/top_widget.dart';

class FindPlacesPage extends StatelessWidget {
  const FindPlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.blue[900],
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          children: [
            const SizedBox(
              height: 16,
            ),
            const TopWidget(),
            const SizedBox(
              height: 24,
            ),
            const SearchWidget(),
            const SizedBox(
              height: 24,
            ),
            const CategoriesListView(),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Explore cities',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CitiesRow(),
            const SizedBox(
              height: 16,
            ),
            const CitiesListView(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
        bottomNavigationBar: const PageBottomNavigationBar(),
      ),
    );
  }
}
