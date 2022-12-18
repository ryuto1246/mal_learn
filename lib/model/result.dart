import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  Result._();

  factory Result.success(T data) = Success<T>;
  factory Result.failure(Exception error) = Failure<T>;

  static Result<T> guard<T>(T Function() body) {
    try {
      return Result.success(body());
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  static Future<Result<T>> gurardFuture<T>(Future<T> Function() future) async {
    try {
      return Result.success(await future());
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  bool get isSuccess => when(
        success: (_) => true,
        failure: (_) => false,
      );
  bool get isFailurte => !isSuccess;

  T get dataOrThrow {
    return when(
      success: (data) => data,
      failure: (e) => throw e,
    );
  }
}

extension ResultObjectExtention<T> on T {
  Result<T> get asSuccess => Result.success(this);
  Result<T> asFailure(Exception e) => Result.failure(e);
}
