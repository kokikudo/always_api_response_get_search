import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_offset.freezed.dart';

@freezed
class BookOffset with _$BookOffset {
  factory BookOffset({
    required int offset,
    @Default('') String name,
  }) = _BookOffset;
}
