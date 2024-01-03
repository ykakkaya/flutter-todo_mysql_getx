import 'package:dio/dio.dart';

class DioManager {
  late Dio dio;
  static const String _baseUrl = "ajanda.ykakkaya.com/";

  DioManager() {
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }
}
