import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

// freezed models
import 'package:always_api_response_get_search/src/freezed_models/book.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response_list.dart';

import '../search_repository.dart';

final getBooksProvider =
    StateNotifierProvider.autoDispose<GetBooksNotifier, BookResponseList?>(
        (ref) => GetBooksNotifier(ref));

class GetBooksNotifier extends StateNotifier<BookResponseList?> {
  GetBooksNotifier(this._ref) : super(null);

  final AutoDisposeProviderReference _ref;

  Future<void> getBooks(title) async {
    // キャンセルトークン設定
    final cancelToken = CancelToken();
    _ref.onDispose(cancelToken.cancel);

    // 検索処理のプロバイダー
    final repo = _ref.read(repositoryProvider);
    // 検索
    final response =
        await repo.fetchBooks(title: title, cancelToken: cancelToken);

    // 再取得を防ぐため、stateを保存
    _ref.maintainState = true;
    state = response;
  }
}

final showBookProvider =
    StateNotifierProvider<ShowBookNotifier, Book?>((ref) => ShowBookNotifier());

class ShowBookNotifier extends StateNotifier<Book?> {
  ShowBookNotifier() : super(null);

  changeState(title, isbn, url) =>
      state = Book(title: title, isbn: isbn, largeImageUrl: url);
}

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final response = useProvider(getBooksProvider);
    final bookStatus = useProvider(showBookProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ///TODO APIのレスポンスがおかしい
            TypeAheadField(
              // TextFieldのデザイン
              textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              // List<Widget>の値が返る非同期処理
              suggestionsCallback: (searchBookTitle) async {
                if (searchBookTitle.isEmpty) {
                  return [Text('')];
                }
                await context
                    .read(getBooksProvider.notifier)
                    .getBooks(searchBookTitle);
                return response!.books;
              },
              errorBuilder: (context, err) {
                return Text('');
              },
              itemBuilder: (context, value) {
                if (value is Text) {
                  return Center(
                    child: value,
                  );
                }
                final book = value as Book;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(book.title),
                  ),
                );
              },
              transitionBuilder: (context, suggestionsBox, _) {
                return suggestionsBox;
              },
              hideOnLoading: true,
              onSuggestionSelected: (book) {
                book = book as Book;
                context
                    .read(showBookProvider.notifier)
                    .changeState(book.title, book.isbn, book.largeImageUrl);
              },
            ),
            Expanded(
              child: Center(
                child: bookStatus != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: NetworkImage(bookStatus.largeImageUrl),
                          ),
                          Text(bookStatus.title),
                          Text(bookStatus.isbn),
                        ],
                      )
                    : Text('本のタイトルを入力してください。'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
