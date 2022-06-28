import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required String name,
    required String nearestCity,
    required String type,
    required List<String> photos,
    required int price,
    required double rating,
    required int hotelsAvailable,
    required String description,
  }) = _Place;
}
