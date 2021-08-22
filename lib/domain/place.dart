import 'package:flutter/material.dart';

class Place {
  List<String> photos;
  String name;
  String nearestCity;
  String type;
  int price;
  num rating;

  int hotelsAvailable;
  String description;
  Place({
    @required this.name,
    @required this.nearestCity,
    @required this.type,
    @required this.photos,
    @required this.price,
    @required this.rating,
    @required this.hotelsAvailable,
    @required this.description,
  });
}
