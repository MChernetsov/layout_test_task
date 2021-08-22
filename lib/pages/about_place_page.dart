import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_prototype/domain/place.dart';

import 'find_places_page.dart';

class AboutPlacePage extends StatelessWidget {
  final Place place;
  AboutPlacePage({@required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Image.asset(
                              place.photos[0],
                              height: constrains.maxWidth,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.all(24.0),
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(Icons.arrow_back_outlined,
                                              color: Colors.black87, size: 16),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              FindPlacesPage(),
                                        ),
                                      );
                                    }),
                                Container(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.favorite_border_rounded,
                                          color: Colors.black87, size: 16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Stack(
                                  children: [
                                    Container(
                                      child: Opacity(
                                        opacity: 0.45,
                                        child: Container(
                                          height: 80,
                                          width: 320,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(24.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 320,
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: Image.asset(
                                              place.photos[0],
                                              height: 60,
                                              width: 60,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: Image.asset(
                                              place.photos[1],
                                              height: 60,
                                              width: 60,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: Image.asset(
                                              place.photos[2],
                                              height: 60,
                                              width: 60,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.asset(
                                                  place.photos[3],
                                                  height: 60,
                                                  width: 60,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.45,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.all(
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
                                )),
                            bottom: 16,
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${place.name}',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${place.nearestCity}',
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
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                ),
                                child: Center(
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
                                decoration: BoxDecoration(
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
                                decoration: BoxDecoration(
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
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
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
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
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
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
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
                              Icon(
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
            );
          },
        ),
      ),
    );
  }
}
