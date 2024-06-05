
import 'package:dio/dio.dart';
import 'package:oppointments_sysytem/core/networking/api_constatnts.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService{

  factory ApiService(Dio dio ,{String baseUrl})=_ApiService;



}