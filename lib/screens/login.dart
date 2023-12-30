import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_mysql/controller/login_controller.dart';
import 'package:todo_mysql/project_settings/project_colors.dart';
import 'package:todo_mysql/project_settings/project_text.dart';
import 'package:todo_mysql/screens/register.dart';

class LoginPage extends GetWidget<LoginController> {
  static const String routeName = "/login";
  const LoginPage({super.key});

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
              Image.asset('assets/images/login.png'),
              _loginUserTextField(ProjectText.loginUserName),
              SizedBox(height: Get.size.height * 0.03),
              _loginPasswordTextField(ProjectText.loginPassword),
              SizedBox(height: Get.size.height * 0.03),
              _buildLoginButton(),
              SizedBox(height: Get.size.height * 0.03),
              InkWell(
                child: _registerText(),
                onTap: () {
                  Get.toNamed(RegisterPage.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      ProjectText.registerText,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: ProjectColors.registerTextColor,
        decoration: TextDecoration.underline,
      ),
    );
  }

  ElevatedButton _buildLoginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ProjectColors.loginButtonColor,
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

  Widget _loginPasswordTextField(String text) {
    return Material(
      color: Colors.blue[50],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(300),
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(300)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextField(
          controller: controller.passwordController,
          textInputAction: TextInputAction.done,
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(text),
          ),
        ),
      ),
    );
  }

  Widget _loginUserTextField(String text) {
    return Material(
      color: Colors.blue[50],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(300),
            bottomRight: Radius.circular(50),
            topLeft: Radius.circular(300)),
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
}
