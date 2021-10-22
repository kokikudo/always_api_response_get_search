import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// freezed models
import 'package:always_api_response_get_search/src/freezed_models/book_offset.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_pagination.dart';
import 'package:always_api_response_get_search/src/freezed_models/book.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_data.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response.dart';
import 'package:always_api_response_get_search/src/freezed_models/book_response_list.dart';
import 'package:always_api_response_get_search/src/freezed_models/configuration.dart';

import '../search_repository.dart';

// 1ページあたりの表示限度
const kBookPageLimit = 50;

final bookPagesProvider = FutureProvider.autoDispose
    .family<BookResponseList, BookPagination>((ref, meta) async {
  // キャンセルトークン設定
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);

  // 検索処理のプロバイダー
  final repo = ref.watch(repositoryProvider);
  // 検索
  final response =
      await repo.fetchBooks(title: meta.name!, cancelToken: cancelToken);

  // 再取得を防ぐため、stateを保存
  ref.maintainState = true;
  return response;
});

final titleProvider =
    StateNotifierProvider<TitleNotifier, String>((_) => TitleNotifier());

class TitleNotifier extends StateNotifier<String> {
  TitleNotifier() : super('最強の睡眠');

  void changeState(value) => state = value;
}

// 本の数を管理する。ListViewのCountに指定するため。
final booksCountProvider = Provider.autoDispose<AsyncValue<List<Book>>>((ref) {
  final name = ref.watch(titleProvider);
  final meta = BookPagination(page: 0, name: name);
  // 本の名前で取得したデータの件数を監視
  return ref.watch(bookPagesProvider(meta)).whenData((value) => value.books);
});

// ページに対する本の表示場所を管理
// 表示限度（50個）に達するたびにページが進む
// 本の個数0〜49　→　1ページ
// 本の個数50〜99　→　2ページ
final bookAtIndexProvider =
    Provider.autoDispose.family<AsyncValue<Book>, BookOffset>((ref, query) {
  final offsetInPage = query.offset % kBookPageLimit;

  final meta =
      BookPagination(page: query.offset ~/ kBookPageLimit, name: query.name);
  return ref
      .watch(bookPagesProvider(meta))
      .whenData((value) => value.books[offsetInPage]);
});

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final watchBooksCount = useProvider(booksCountProvider);
    final title = useProvider(titleProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('検索ワード: $title'),
            TextField(
              onChanged: (value) =>
                  context.read(titleProvider.notifier).changeState(value),
            ),
            watchBooksCount.when(
              data: (books) => Expanded(
                child: ListView(
                  children: books
                      .map(
                        (book) => Text(book.title),
                      )
                      .toList(),
                ),
              ),
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: (err, stack) => Center(
                child: Text(err.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
