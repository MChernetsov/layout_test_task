import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blue[500],
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        hintText: 'Search',
        hintStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}
