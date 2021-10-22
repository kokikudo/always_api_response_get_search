// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_offset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookOffsetTearOff {
  const _$BookOffsetTearOff();

  _BookOffset call({required int offset, String name = ''}) {
    return _BookOffset(
      offset: offset,
      name: name,
    );
  }
}

/// @nodoc
const $BookOffset = _$BookOffsetTearOff();

/// @nodoc
mixin _$BookOffset {
  int get offset => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookOffsetCopyWith<BookOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookOffsetCopyWith<$Res> {
  factory $BookOffsetCopyWith(
          BookOffset value, $Res Function(BookOffset) then) =
      _$BookOffsetCopyWithImpl<$Res>;
  $Res call({int offset, String name});
}

/// @nodoc
class _$BookOffsetCopyWithImpl<$Res> implements $BookOffsetCopyWith<$Res> {
  _$BookOffsetCopyWithImpl(this._value, this._then);

  final BookOffset _value;
  // ignore: unused_field
  final $Res Function(BookOffset) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookOffsetCopyWith<$Res> implements $BookOffsetCopyWith<$Res> {
  factory _$BookOffsetCopyWith(
          _BookOffset value, $Res Function(_BookOffset) then) =
      __$BookOffsetCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String name});
}

/// @nodoc
class __$BookOffsetCopyWithImpl<$Res> extends _$BookOffsetCopyWithImpl<$Res>
    implements _$BookOffsetCopyWith<$Res> {
  __$BookOffsetCopyWithImpl(
      _BookOffset _value, $Res Function(_BookOffset) _then)
      : super(_value, (v) => _then(v as _BookOffset));

  @override
  _BookOffset get _value => super._value as _BookOffset;

  @override
  $Res call({
    Object? offset = freezed,
    Object? name = freezed,
  }) {
    return _then(_BookOffset(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BookOffset with DiagnosticableTreeMixin implements _BookOffset {
  _$_BookOffset({required this.offset, this.name = ''});

  @override
  final int offset;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookOffset(offset: $offset, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookOffset'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookOffset &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$BookOffsetCopyWith<_BookOffset> get copyWith =>
      __$BookOffsetCopyWithImpl<_BookOffset>(this, _$identity);
}

abstract class _BookOffset implements BookOffset {
  factory _BookOffset({required int offset, String name}) = _$_BookOffset;

  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookOffsetCopyWith<_BookOffset> get copyWith =>
      throw _privateConstructorUsedError;
}
