import 'package:always_api_response_get_search/src/freezed_models/book.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response_list.dart';
import 'package:always_api_response_get_search/src/search_repository.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:always_api_response_get_search/src/freezed_models/configuration.dart';

void main() {
  test('本のタイトルを入れるとレスポンスがリストになって返ってくるか', () async {
    final title = '最強の睡眠';
    final repo = useProvider(repositoryProvider);

    final result = await repo.fetchBooks(title: title);
    print(result);
  });
}
