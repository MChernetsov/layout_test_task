import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_test_task/domain/mock_repository.dart';

class RatingsRow extends StatelessWidget {
  const RatingsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final place = MockRepository().getPlace();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
              ),
            ),
            Text(
              'Rating',
              style: GoogleFonts.poppins(
                color: Colors.white24,
                fontSize: 14,
              ),
            ),
            Text(
              '${place.rating} (2.2k)',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Center(
                child: Icon(
                  CupertinoIcons.compass,
                  color: Colors.red[300],
                  size: 14,
                ),
              ),
            ),
            Text(
              'Direction',
              style: GoogleFonts.poppins(
                color: Colors.white24,
                fontSize: 14,
              ),
            ),
            Text(
              '8km',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.hotel_outlined,
                  color: Colors.blue[300],
                  size: 14,
                ),
              ),
            ),
            Text(
              'Hotel',
              style: GoogleFonts.poppins(
                color: Colors.white24,
                fontSize: 14,
              ),
            ),
            Text(
              '${place.hotelsAvailable} avail.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}
