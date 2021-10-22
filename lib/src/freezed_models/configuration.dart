import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'configuration.freezed.dart';

part 'configuration.g.dart';

// apiKeyを定義するクラス
@freezed
class Configuration with _$Configuration {
  @JsonSerializable(fieldRename: FieldRename.snake) // 参照するファイル名をスネークケースに変える
  factory Configuration({required String apiKey}) = _Configuration;

  factory Configuration.fromJson(Map<String, Object?> json) =>
      _$ConfigurationFromJson(json);
}

// assetsファイルにあるJsonファイルからキーを取得しモデル化する
final configurationsProvider = FutureProvider<Configuration>((ref) async {
  final content =
      json.decode(await rootBundle.loadString('asset/configurations.json'))
          as Map<String, Object?>;
  return Configuration.fromJson(content);
});
