import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oppointments_sysytem/core/networking/api_error_handler.dart';
part 'api_result.freezed.dart';

@Freezed()
class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data)=Success<T>;
  factory ApiResult.failure(ErrorHandler errorHandler)=Failure<T>;
}