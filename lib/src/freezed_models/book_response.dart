import 'package:always_api_response_get_search/src/freezed_models/book_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_response.freezed.dart';

part 'book_response.g.dart';

// レスポンス単体のモデル
@freezed
class BookResponse with _$BookResponse {
  factory BookResponse({required List<BookData> Items, required int hits}) = _BookResponse; // "Items"["Item"]の中身が入る

  factory BookResponse.fromJson(Map<String, Object?> json) =>
      _$BookResponseFromJson(json);
}
