// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookData _$BookDataFromJson(Map<String, dynamic> json) {
  return _BookData.fromJson(json);
}

/// @nodoc
class _$BookDataTearOff {
  const _$BookDataTearOff();

  _BookData call({required Map<String, Object?> Item}) {
    return _BookData(
      Item: Item,
    );
  }

  BookData fromJson(Map<String, Object> json) {
    return BookData.fromJson(json);
  }
}

/// @nodoc
const $BookData = _$BookDataTearOff();

/// @nodoc
mixin _$BookData {
  Map<String, Object?> get Item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDataCopyWith<BookData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDataCopyWith<$Res> {
  factory $BookDataCopyWith(BookData value, $Res Function(BookData) then) =
      _$BookDataCopyWithImpl<$Res>;
  $Res call({Map<String, Object?> Item});
}

/// @nodoc
class _$BookDataCopyWithImpl<$Res> implements $BookDataCopyWith<$Res> {
  _$BookDataCopyWithImpl(this._value, this._then);

  final BookData _value;
  // ignore: unused_field
  final $Res Function(BookData) _then;

  @override
  $Res call({
    Object? Item = freezed,
  }) {
    return _then(_value.copyWith(
      Item: Item == freezed
          ? _value.Item
          : Item // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
abstract class _$BookDataCopyWith<$Res> implements $BookDataCopyWith<$Res> {
  factory _$BookDataCopyWith(_BookData value, $Res Function(_BookData) then) =
      __$BookDataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, Object?> Item});
}

/// @nodoc
class __$BookDataCopyWithImpl<$Res> extends _$BookDataCopyWithImpl<$Res>
    implements _$BookDataCopyWith<$Res> {
  __$BookDataCopyWithImpl(_BookData _value, $Res Function(_BookData) _then)
      : super(_value, (v) => _then(v as _BookData));

  @override
  _BookData get _value => super._value as _BookData;

  @override
  $Res call({
    Object? Item = freezed,
  }) {
    return _then(_BookData(
      Item: Item == freezed
          ? _value.Item
          : Item // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookData with DiagnosticableTreeMixin implements _BookData {
  _$_BookData({required this.Item});

  factory _$_BookData.fromJson(Map<String, dynamic> json) =>
      _$$_BookDataFromJson(json);

  @override
  final Map<String, Object?> Item;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookData(Item: $Item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookData'))
      ..add(DiagnosticsProperty('Item', Item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookData &&
            (identical(other.Item, Item) ||
                const DeepCollectionEquality().equals(other.Item, Item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(Item);

  @JsonKey(ignore: true)
  @override
  _$BookDataCopyWith<_BookData> get copyWith =>
      __$BookDataCopyWithImpl<_BookData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDataToJson(this);
  }
}

abstract class _BookData implements BookData {
  factory _BookData({required Map<String, Object?> Item}) = _$_BookData;

  factory _BookData.fromJson(Map<String, dynamic> json) = _$_BookData.fromJson;

  @override
  Map<String, Object?> get Item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookDataCopyWith<_BookData> get copyWith =>
      throw _privateConstructorUsedError;
}
