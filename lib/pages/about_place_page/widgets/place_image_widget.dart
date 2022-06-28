import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceImageWidget extends StatelessWidget {
  final List<String> photos;

  const PlaceImageWidget({
    Key? key,
    required this.photos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.asset(
              photos[0],
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 40,
                    ),
                    height: 36,
                    width: 36,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 40,
                  ),
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.45,
                    child: Container(
                      height: 80,
                      width: 320,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 320,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            photos[0],
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            photos[1],
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            photos[2],
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                photos[3],
                                height: 60,
                                width: 60,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Opacity(
                              opacity: 0.45,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                ),
                                height: 60,
                                width: 60,
                              ),
                            ),
                            Center(
                              child: Text(
                                '+5',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
