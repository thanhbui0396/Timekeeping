import 'package:flutter/material.dart';

import 'package:timekeeping_app/apps/untils/app_colors.dart';
import 'package:timekeeping_app/apps/untils/text_app.dart';
import 'package:timekeeping_app/pages/auth/widget/input_body.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController forgotPasswordController = TextEditingController();

  final GlobalKey<FormState> _globalKeyLogin = GlobalKey<FormState>();

  bool isLogin = false;

  Future<void> handleSubmit() async {
    if (!_globalKeyLogin.currentState!.validate()) {
      print('11111111');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColors.colorMain,
          centerTitle: true,
          title: const Text(
            TextApp.singUp,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _globalKeyLogin,
                  child: Column(
                    children: [
                      InputBody(
                        label: TextApp.labelLogin,
                        controller: emailController,
                        isPassword: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InputBody(
                        label: TextApp.labelPassword,
                        controller: passwordController,
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InputBody(
                        label: TextApp.labelConfimPassword,
                        controller: forgotPasswordController,
                        isPassword: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: handleSubmit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorMain,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: isLogin
                        ? const CircularProgressIndicator()
                        : const Text(
                            TextApp.createAccount,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
