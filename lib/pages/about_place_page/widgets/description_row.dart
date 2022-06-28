import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_test_task/domain/mock_repository.dart';

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final place = MockRepository().getPlace();
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place.name,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                place.nearestCity,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '\$${place.price}',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'per person',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
