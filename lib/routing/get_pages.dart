import 'package:get/get.dart';
import 'package:todo_mysql/screens/add_notes.dart';
import 'package:todo_mysql/screens/index.dart';
import 'package:todo_mysql/screens/login.dart';
import 'package:todo_mysql/screens/register.dart';
import 'package:todo_mysql/screens/update_notes.dart';

List<GetPage> getpages = [
  GetPage(name: IndexPage.routeName, page: (() => const IndexPage())),
  GetPage(name: AddNotesPage.routeName, page: () => const AddNotesPage()),
  GetPage(name: LoginPage.routeName, page: () => const LoginPage()),
  GetPage(name: RegisterPage.routeName, page: () => const RegisterPage()),
  GetPage(name: UpdateNotesPage.routeName, page: () => const UpdateNotesPage())
];
