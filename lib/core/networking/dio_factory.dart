import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static DioFactory? dioFactory;
  late final Dio _dio;

  DioFactory._() {
    _dio = createDio();
  }

  factory DioFactory() {
    dioFactory ??= DioFactory._();
    return dioFactory!;
  }
  Dio getDio(){
    return _dio;
  }

  Dio createDio() {
    const timeOut = Duration(seconds: 30);
    Dio dio = Dio(BaseOptions(
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
      headers: _addDioHeaders(),
    ));
    dio.interceptors.add(_interceptor());
    return dio;
  }

  Map<String, dynamic> _addDioHeaders() {
    final header = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ',
    };
    return header;
  }

  Interceptor _interceptor() {
    return PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    );
  }
}
