import 'package:complete_advanced_flutter/data/responses/response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:complete_advanced_flutter/app/constant.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient{
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customer/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email,
      @Field("password") String password,
      @Field("imei") String imei,
      @Field("deviceType") String deviceType,
      );
}