import 'package:app_timekeeping/apps/routers/router_name.dart';
import 'package:app_timekeeping/apps/untils/app_colors.dart';
import 'package:app_timekeeping/apps/untils/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widget/input_body.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _globalKeyLogin = GlobalKey<FormState>();

  bool isLogin = false;

  Future<void> handleSubmit() async {
    if (!_globalKeyLogin.currentState!.validate()) {
      _globalKeyLogin.currentState!.save();
    } else {
      Navigator.pushNamed(context, RouterName.optionsPage);
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
            TextApp.login,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
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
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              TextApp.forgotPassword,
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.colorMain),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                                  TextApp.login,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.grey.withOpacity(0.4),
                                    Colors.grey,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            'HOẶC',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: 2,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.grey,
                                    Colors.grey.withOpacity(0.4),
                                    Colors.white
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          surfaceTintColor:
                              MaterialStatePropertyAll(Colors.black),
                          side: MaterialStatePropertyAll(
                            BorderSide(color: Colors.grey),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              TextIcons.iconGoogle,
                              height: 25,
                              width: 25,
                            ),
                            const Expanded(
                              child: Center(
                                child: Text(
                                  TextApp.textLoginGoogle,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey.withOpacity(0.1),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    TextApp.question,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouterName.registerPage);
                    },
                    child: const Text(
                      TextApp.singUp,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.colorMain,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
