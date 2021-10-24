import 'package:always_api_response_get_search/src/freezed_models/book_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

// 取得
Future<BookResponse> _get(String title, CancelToken? cancelToken) async {
  // APIキー取得。取得メソッドはFeatureProviderなので.futureをつける
  const configs = "1081246808762900104";

  // DioでAPIにリクエスト
  const url =
      'https://app.rakuten.co.jp/services/api/BooksBook/Search/20170404';
  final Map<String, Object?> queryParameters = {
    'format': 'json',
    'title': title,
    'size': 0,
    'booksGenreId': '001',
    'hits': 5,
    'applicationId': configs
  };
  final result = await Dio().get<Map<String, Object?>>(url,
      cancelToken: cancelToken, queryParameters: queryParameters);
  // モデル化して返却
  return BookResponse.fromJson(result.data!);
}

void main() {
  test('本のタイトルを入れるとレスポンスがリストになって返ってくるか', () async {
    final title = 'ゼロ';
    final result = await _get(title, null);
    for (var book in result.Items) {
      print('${book.Item['title']}');
    }
  });
}
