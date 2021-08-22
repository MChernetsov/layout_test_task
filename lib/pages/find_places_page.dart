import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_prototype/domain/place.dart';
import 'package:layout_prototype/pages/about_place_page.dart';
import 'package:layout_prototype/pages/starting_screen_page.dart';
import 'package:layout_prototype/widgets/category_widget.dart';
import 'package:layout_prototype/widgets/place_card_widget.dart';

class FindPlacesPage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final place = Place(
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      hotelsAvailable: 5,
      name: 'Nice Park',
      nearestCity: 'London',
      photos: [
        'assets/categories/park.jpg',
        'assets/categories/beach.jpg',
        'assets/categories/camp.jpg',
        'assets/categories/mountain.jpg',
        'assets/categories/museum.jpg',
      ],
      price: 120,
      rating: 4.5,
      type: 'Park');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Where do',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'you want to go?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ]),
              ClipOval(
                child: Image.asset(
                  'assets/face.jpg',
                  width: 48,
                  height: 48,
                  fit: BoxFit.fill,
                ),
              ),
            ]),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                color: Colors.blue[500],
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                textAlignVertical: TextAlignVertical.bottom,
                showCursor: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 10),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWidget(
                    image: 'assets/categories/mountain.jpg',
                    text: 'Mountain',
                  ),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/beach.jpg', text: 'Beach'),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/park.jpg', text: 'Park'),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/camp.jpg', text: 'Camp'),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/museum.jpg', text: 'Museum'),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/museum.jpg', text: 'Museum'),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/museum.jpg', text: 'Museum'),
                  const SizedBox(width: 16),
                  CategoryWidget(
                      image: 'assets/categories/museum.jpg', text: 'Museum'),
                  const SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Explore cities',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  'Popular',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Recomended',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Most Viewed',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlaceCardWidget(
                    place: 'London',
                    image: 'assets/categories/park.jpg',
                    name: 'Nice park',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutPlacePage(place: place),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 32),
                  PlaceCardWidget(
                    place: 'New York',
                    image: 'assets/categories/park.jpg',
                    name: 'Statue of liberty',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 32),
                  PlaceCardWidget(
                    place: 'New York',
                    image: 'assets/categories/park.jpg',
                    name: 'Statue of liberty',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 32),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 48,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              decoration: BoxDecoration(
                color: Colors.blue[500],
                borderRadius: BorderRadius.all(
                  Radius.circular(24.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartingScreenPage(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      CupertinoIcons.compass,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.flag_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_add_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
