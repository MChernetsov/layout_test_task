import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Where do \n',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'you want to go?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ClipOval(
        child: Image.asset(
          'assets/face.jpg',
          width: 48,
          height: 48,
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}
