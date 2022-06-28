import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceCardWidget extends StatelessWidget {
  final String place;
  final String image;
  final String name;
  final VoidCallback onPressed;

  const PlaceCardWidget({
    Key? key,
    required this.place,
    required this.image,
    required this.name,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 212,
        width: 160,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      24,
                    ),
                  ),
                  child: Image.asset(
                    image,
                    height: 160,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.favorite_border_rounded,
                              color: Colors.grey[400], size: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.place_outlined,
                  color: Colors.grey,
                  size: 16,
                ),
                Text(
                  place,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
