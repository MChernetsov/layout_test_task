import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  final text;
  final image;

  const CategoryWidget({Key key, this.text, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                width: 48,
                height: 48,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4, 0, 4, 8),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
