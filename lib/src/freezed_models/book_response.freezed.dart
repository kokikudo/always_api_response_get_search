// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) {
  return _BookResponse.fromJson(json);
}

/// @nodoc
class _$BookResponseTearOff {
  const _$BookResponseTearOff();

  _BookResponse call({required List<BookData> Items, required int hits}) {
    return _BookResponse(
      Items: Items,
      hits: hits,
    );
  }

  BookResponse fromJson(Map<String, Object> json) {
    return BookResponse.fromJson(json);
  }
}

/// @nodoc
const $BookResponse = _$BookResponseTearOff();

/// @nodoc
mixin _$BookResponse {
  List<BookData> get Items => throw _privateConstructorUsedError;
  int get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookResponseCopyWith<BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseCopyWith<$Res> {
  factory $BookResponseCopyWith(
          BookResponse value, $Res Function(BookResponse) then) =
      _$BookResponseCopyWithImpl<$Res>;
  $Res call({List<BookData> Items, int hits});
}

/// @nodoc
class _$BookResponseCopyWithImpl<$Res> implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._value, this._then);

  final BookResponse _value;
  // ignore: unused_field
  final $Res Function(BookResponse) _then;

  @override
  $Res call({
    Object? Items = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      Items: Items == freezed
          ? _value.Items
          : Items // ignore: cast_nullable_to_non_nullable
              as List<BookData>,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BookResponseCopyWith<$Res>
    implements $BookResponseCopyWith<$Res> {
  factory _$BookResponseCopyWith(
          _BookResponse value, $Res Function(_BookResponse) then) =
      __$BookResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<BookData> Items, int hits});
}

/// @nodoc
class __$BookResponseCopyWithImpl<$Res> extends _$BookResponseCopyWithImpl<$Res>
    implements _$BookResponseCopyWith<$Res> {
  __$BookResponseCopyWithImpl(
      _BookResponse _value, $Res Function(_BookResponse) _then)
      : super(_value, (v) => _then(v as _BookResponse));

  @override
  _BookResponse get _value => super._value as _BookResponse;

  @override
  $Res call({
    Object? Items = freezed,
    Object? hits = freezed,
  }) {
    return _then(_BookResponse(
      Items: Items == freezed
          ? _value.Items
          : Items // ignore: cast_nullable_to_non_nullable
              as List<BookData>,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookResponse with DiagnosticableTreeMixin implements _BookResponse {
  _$_BookResponse({required this.Items, required this.hits});

  factory _$_BookResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookResponseFromJson(json);

  @override
  final List<BookData> Items;
  @override
  final int hits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookResponse(Items: $Items, hits: $hits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookResponse'))
      ..add(DiagnosticsProperty('Items', Items))
      ..add(DiagnosticsProperty('hits', hits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookResponse &&
            (identical(other.Items, Items) ||
                const DeepCollectionEquality().equals(other.Items, Items)) &&
            (identical(other.hits, hits) ||
                const DeepCollectionEquality().equals(other.hits, hits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(Items) ^
      const DeepCollectionEquality().hash(hits);

  @JsonKey(ignore: true)
  @override
  _$BookResponseCopyWith<_BookResponse> get copyWith =>
      __$BookResponseCopyWithImpl<_BookResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookResponseToJson(this);
  }
}

abstract class _BookResponse implements BookResponse {
  factory _BookResponse({required List<BookData> Items, required int hits}) =
      _$_BookResponse;

  factory _BookResponse.fromJson(Map<String, dynamic> json) =
      _$_BookResponse.fromJson;

  @override
  List<BookData> get Items => throw _privateConstructorUsedError;
  @override
  int get hits => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookResponseCopyWith<_BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
