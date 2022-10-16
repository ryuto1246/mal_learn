import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mal_learn/model/error.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  factory Result.success(T value) = Success<T>;
  factory Result.failure(AppError error) = Failure<T>;
}
