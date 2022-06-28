import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_test_task/domain/place.dart';
import 'package:layout_test_task/pages/about_place_page/widgets/description_row.dart';
import 'package:layout_test_task/pages/about_place_page/widgets/place_image_widget.dart';
import 'package:layout_test_task/pages/about_place_page/widgets/ratings_row.dart';

class AboutPlacePage extends StatelessWidget {
  final Place place;

  const AboutPlacePage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              PlaceImageWidget(
                photos: place.photos,
              ),
              const DescriptionRow(),
              const RatingsRow(),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Descriptions',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Wrap(
                  children: [
                    Text(
                      place.description,
                      style: GoogleFonts.poppins(
                        color: Colors.white24,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 48,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                ),
                child: TextButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Book now  ',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                        ),
                      ]),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
