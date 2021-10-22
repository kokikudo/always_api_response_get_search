import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_pagination.freezed.dart';

@freezed
class BookPagination with _$BookPagination {
  factory BookPagination({required int page, String? name}) = _BookPagination;
}