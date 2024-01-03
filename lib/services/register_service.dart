import 'package:dio/dio.dart';
import 'package:todo_mysql/models/register_model.dart';
import 'package:todo_mysql/models/register_response_model.dart';
import 'package:todo_mysql/services/dio_manager.dart';

abstract class IRegisterService {
  Future<RegisterResponseModel> register(RegisterModel rm);
}

class RegisterService extends IRegisterService {
  late Dio dio;
  RegisterService(DioManager dioManager) {
    dio = dioManager.dio;
  }

  @override
  Future<RegisterResponseModel> register(RegisterModel rm) {
    return dio.post("register.php", data: rm.toJson()).then((value) => registerResponseModelFromJson(value.data));
  }
}
