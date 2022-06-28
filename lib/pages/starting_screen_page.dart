import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_test_task/pages/find_places_page/find_places_page.dart';

class StartingScreenPage extends StatelessWidget {
  const StartingScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/main_background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.blue[900] ?? Colors.blue,
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  'Enjoy your life',
                  style: GoogleFonts.comfortaa(
                    fontSize: 36,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 48,
                width: 128,
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
                          'Sign In  ',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                        ),
                      ]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FindPlacesPage(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: TextButton(
                  child: Text(
                    'Create an account',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
