import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_mysql/controller/register_controller.dart';
import 'package:todo_mysql/project_settings/project_text.dart';

class RegisterPage extends GetWidget<RegisterController> {
  static const String routeName = "/register";
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), // Ovalleştirme için radius değeri
                  child: Image.asset(
                    "assets/images/register.jpg",
                    fit: BoxFit.cover, // Resmi container'a sığdırmak için uygun ölçekte ayarlama
                  ),
                ),
                SizedBox(height: Get.size.height * 0.03),
                _registerUserTextField(ProjectText.registerUserNameText),
                SizedBox(height: Get.size.height * 0.03),
                _registerMailTextField(ProjectText.registerMailText),
                SizedBox(height: Get.size.height * 0.03),
                _registerPasswordTextField(ProjectText.registerPasswordText),
                SizedBox(height: Get.size.height * 0.03),
                _registerRePasswordTextField(ProjectText.registerRePasswordText),
                SizedBox(height: Get.size.height * 0.03),
                _buildRegisterButton()
              ],
            ),
          ),
        ));
  }

  Widget _registerUserTextField(String text) {
    return Material(
      color: Colors.blue[50],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(300),
            topLeft: Radius.circular(300),
            bottomRight: Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextField(
          controller: controller.userNameController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(text),
          ),
        ),
      ),
    );
  }

  Widget _registerMailTextField(String text) {
    return Material(
      color: Colors.blue[50],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextField(
          controller: controller.mailController,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(text),
          ),
        ),
      ),
    );
  }

  Widget _registerPasswordTextField(String text) {
    return Material(
      color: Colors.blue[50],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextField(
          controller: controller.passwordController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(text),
          ),
        ),
      ),
    );
  }

  Widget _registerRePasswordTextField(String text) {
    return Material(
      color: Colors.blue[50],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(300),
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(300)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextField(
          controller: controller.rePasswordController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(text),
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildRegisterButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      onPressed: () {
        // Add login button pressed logic here
      },
      child: Text(
        ProjectText.loginButtonText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
