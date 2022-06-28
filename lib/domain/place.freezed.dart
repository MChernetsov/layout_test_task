// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Place {
  String get name => throw _privateConstructorUsedError;
  String get nearestCity => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get hotelsAvailable => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String nearestCity,
      String type,
      List<String> photos,
      int price,
      double rating,
      int hotelsAvailable,
      String description});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nearestCity = freezed,
    Object? type = freezed,
    Object? photos = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? hotelsAvailable = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nearestCity: nearestCity == freezed
          ? _value.nearestCity
          : nearestCity // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      hotelsAvailable: hotelsAvailable == freezed
          ? _value.hotelsAvailable
          : hotelsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String nearestCity,
      String type,
      List<String> photos,
      int price,
      double rating,
      int hotelsAvailable,
      String description});
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, (v) => _then(v as _$_Place));

  @override
  _$_Place get _value => super._value as _$_Place;

  @override
  $Res call({
    Object? name = freezed,
    Object? nearestCity = freezed,
    Object? type = freezed,
    Object? photos = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? hotelsAvailable = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Place(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nearestCity: nearestCity == freezed
          ? _value.nearestCity
          : nearestCity // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      hotelsAvailable: hotelsAvailable == freezed
          ? _value.hotelsAvailable
          : hotelsAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Place implements _Place {
  const _$_Place(
      {required this.name,
      required this.nearestCity,
      required this.type,
      required final List<String> photos,
      required this.price,
      required this.rating,
      required this.hotelsAvailable,
      required this.description})
      : _photos = photos;

  @override
  final String name;
  @override
  final String nearestCity;
  @override
  final String type;
  final List<String> _photos;
  @override
  List<String> get photos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final int price;
  @override
  final double rating;
  @override
  final int hotelsAvailable;
  @override
  final String description;

  @override
  String toString() {
    return 'Place(name: $name, nearestCity: $nearestCity, type: $type, photos: $photos, price: $price, rating: $rating, hotelsAvailable: $hotelsAvailable, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.nearestCity, nearestCity) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.hotelsAvailable, hotelsAvailable) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nearestCity),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(hotelsAvailable),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);
}

abstract class _Place implements Place {
  const factory _Place(
      {required final String name,
      required final String nearestCity,
      required final String type,
      required final List<String> photos,
      required final int price,
      required final double rating,
      required final int hotelsAvailable,
      required final String description}) = _$_Place;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get nearestCity => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<String> get photos => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  int get hotelsAvailable => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}
