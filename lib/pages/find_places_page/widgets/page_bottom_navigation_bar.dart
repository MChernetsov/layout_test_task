import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageBottomNavigationBar extends StatelessWidget {
  const PageBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.blue[500],
        borderRadius: const BorderRadius.all(
          Radius.circular(24.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.compass,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: const Icon(
              Icons.flag_outlined,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: const Icon(
              Icons.person_add_outlined,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
