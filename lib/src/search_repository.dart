// 本の検索処理その他諸々
import 'dart:convert';

import 'package:always_api_response_get_search/src/freezed_models/book.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response_list.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:always_api_response_get_search/src/freezed_models/configuration.dart';

final dioProvider = Provider((_) => Dio());
final repositoryProvider = Provider((ref) => SearchRepository(ref.read));

class SearchRepository {
  SearchRepository(this._read);

  final Reader _read;

  Future<BookResponseList> fetchBooks({
    required String title,
    CancelToken? cancelToken,
  }) async {
    final response = await _get(title, cancelToken);
    final result = BookResponseList(
      totalCount: response.hits,
      books: response.Items
          .map(
            (bookData) => Book.fromJson(bookData.Item),
          )
          .toList(growable: false),
    );
    return result;
  }

  // 取得
  Future<BookResponse> _get(String title, CancelToken? cancelToken) async {
    // APIキー取得。取得メソッドはFeatureProviderなので.futureをつける
    final configs = await _read(configurationsProvider.future);

    // DioでAPIにリクエスト
    const url =
        'https://app.rakuten.co.jp/services/api/BooksTotal/Search/20170404';
    final Map<String, Object?> queryParameters = {
      'format': 'json',
      'keyword': title,
      'booksGenreId': '001',
      'hits': 10,
      'applicationId': configs.apiKey
    };
    final result = await _read(dioProvider).get<Map<String, Object?>>(url,
        cancelToken: cancelToken, queryParameters: queryParameters);
    // モデル化して返却
    return BookResponse.fromJson(result.data!);
  }
}
