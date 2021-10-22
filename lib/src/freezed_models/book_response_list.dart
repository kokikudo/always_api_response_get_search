import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'book.dart';

part 'book_response_list.freezed.dart';

// レスポンスをリスト化したモデル
@freezed
class BookResponseList with _$BookResponseList {
  factory BookResponseList({
    required int totalCount, // 取得件数
    required List<Book> books, // データ
  }) = _BookResponseList;
}
