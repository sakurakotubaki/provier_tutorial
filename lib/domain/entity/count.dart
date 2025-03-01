import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'count.freezed.dart';

part 'count.g.dart';

@freezed
class Count with _$Count {
  const factory Count({
    required int count,
  }) = _Count;

  factory Count.fromJson(Map<String, Object?> json) => _$CountFromJson(json);
}
