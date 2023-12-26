import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_mysql/controller/get_controller.dart';
import 'package:todo_mysql/routing/get_pages.dart';
import 'package:todo_mysql/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  Future<void> getAllControllers() async {
    await getControllers();
  }

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getAllControllers();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'todo_mysql',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: getpages,
      home: const LoginPage(),
    );
  }
}
