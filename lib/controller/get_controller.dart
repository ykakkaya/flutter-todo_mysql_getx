import 'package:get/get.dart';
import 'package:todo_mysql/controller/login_controller.dart';
import 'package:todo_mysql/controller/notes_controller.dart';
import 'package:todo_mysql/controller/register_controller.dart';

Future getControllers() async {
  Get.create(() => LoginController());
  Get.create(() => RegisterController());
  Get.create(() => NoteController());
}
