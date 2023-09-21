import 'package:app_timekeeping/pages/auth/login_page.dart';
import 'package:app_timekeeping/pages/home/option_person/home_page/home_page.dart';
import 'package:app_timekeeping/providers/check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late bool isLogin;

  @override
  void initState() {
    super.initState();
    isLogin = context.read<CheckLogin>().isLogin;
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return const HomePage();
    } else {
      return const LoginPage();
    }
  }
}
