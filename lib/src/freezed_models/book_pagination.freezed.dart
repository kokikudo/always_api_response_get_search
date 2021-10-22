// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookPaginationTearOff {
  const _$BookPaginationTearOff();

  _BookPagination call({required int page, String? name}) {
    return _BookPagination(
      page: page,
      name: name,
    );
  }
}

/// @nodoc
const $BookPagination = _$BookPaginationTearOff();

/// @nodoc
mixin _$BookPagination {
  int get page => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookPaginationCopyWith<BookPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookPaginationCopyWith<$Res> {
  factory $BookPaginationCopyWith(
          BookPagination value, $Res Function(BookPagination) then) =
      _$BookPaginationCopyWithImpl<$Res>;
  $Res call({int page, String? name});
}

/// @nodoc
class _$BookPaginationCopyWithImpl<$Res>
    implements $BookPaginationCopyWith<$Res> {
  _$BookPaginationCopyWithImpl(this._value, this._then);

  final BookPagination _value;
  // ignore: unused_field
  final $Res Function(BookPagination) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookPaginationCopyWith<$Res>
    implements $BookPaginationCopyWith<$Res> {
  factory _$BookPaginationCopyWith(
          _BookPagination value, $Res Function(_BookPagination) then) =
      __$BookPaginationCopyWithImpl<$Res>;
  @override
  $Res call({int page, String? name});
}

/// @nodoc
class __$BookPaginationCopyWithImpl<$Res>
    extends _$BookPaginationCopyWithImpl<$Res>
    implements _$BookPaginationCopyWith<$Res> {
  __$BookPaginationCopyWithImpl(
      _BookPagination _value, $Res Function(_BookPagination) _then)
      : super(_value, (v) => _then(v as _BookPagination));

  @override
  _BookPagination get _value => super._value as _BookPagination;

  @override
  $Res call({
    Object? page = freezed,
    Object? name = freezed,
  }) {
    return _then(_BookPagination(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BookPagination
    with DiagnosticableTreeMixin
    implements _BookPagination {
  _$_BookPagination({required this.page, this.name});

  @override
  final int page;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookPagination(page: $page, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookPagination'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookPagination &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$BookPaginationCopyWith<_BookPagination> get copyWith =>
      __$BookPaginationCopyWithImpl<_BookPagination>(this, _$identity);
}

abstract class _BookPagination implements BookPagination {
  factory _BookPagination({required int page, String? name}) =
      _$_BookPagination;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookPaginationCopyWith<_BookPagination> get copyWith =>
      throw _privateConstructorUsedError;
}
