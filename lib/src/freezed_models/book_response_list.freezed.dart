// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_response_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookResponseListTearOff {
  const _$BookResponseListTearOff();

  _BookResponseList call({required int totalCount, required List<Book> books}) {
    return _BookResponseList(
      totalCount: totalCount,
      books: books,
    );
  }
}

/// @nodoc
const $BookResponseList = _$BookResponseListTearOff();

/// @nodoc
mixin _$BookResponseList {
  int get totalCount => throw _privateConstructorUsedError; // 取得件数
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookResponseListCopyWith<BookResponseList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseListCopyWith<$Res> {
  factory $BookResponseListCopyWith(
          BookResponseList value, $Res Function(BookResponseList) then) =
      _$BookResponseListCopyWithImpl<$Res>;
  $Res call({int totalCount, List<Book> books});
}

/// @nodoc
class _$BookResponseListCopyWithImpl<$Res>
    implements $BookResponseListCopyWith<$Res> {
  _$BookResponseListCopyWithImpl(this._value, this._then);

  final BookResponseList _value;
  // ignore: unused_field
  final $Res Function(BookResponseList) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$BookResponseListCopyWith<$Res>
    implements $BookResponseListCopyWith<$Res> {
  factory _$BookResponseListCopyWith(
          _BookResponseList value, $Res Function(_BookResponseList) then) =
      __$BookResponseListCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<Book> books});
}

/// @nodoc
class __$BookResponseListCopyWithImpl<$Res>
    extends _$BookResponseListCopyWithImpl<$Res>
    implements _$BookResponseListCopyWith<$Res> {
  __$BookResponseListCopyWithImpl(
      _BookResponseList _value, $Res Function(_BookResponseList) _then)
      : super(_value, (v) => _then(v as _BookResponseList));

  @override
  _BookResponseList get _value => super._value as _BookResponseList;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? books = freezed,
  }) {
    return _then(_BookResponseList(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_BookResponseList
    with DiagnosticableTreeMixin
    implements _BookResponseList {
  _$_BookResponseList({required this.totalCount, required this.books});

  @override
  final int totalCount;
  @override // 取得件数
  final List<Book> books;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookResponseList(totalCount: $totalCount, books: $books)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookResponseList'))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('books', books));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookResponseList &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$BookResponseListCopyWith<_BookResponseList> get copyWith =>
      __$BookResponseListCopyWithImpl<_BookResponseList>(this, _$identity);
}

abstract class _BookResponseList implements BookResponseList {
  factory _BookResponseList(
      {required int totalCount,
      required List<Book> books}) = _$_BookResponseList;

  @override
  int get totalCount => throw _privateConstructorUsedError;
  @override // 取得件数
  List<Book> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookResponseListCopyWith<_BookResponseList> get copyWith =>
      throw _privateConstructorUsedError;
}
