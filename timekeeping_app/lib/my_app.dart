import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:timekeeping_app/apps/router/router_config.dart';
import 'package:timekeeping_app/providers/check.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 825),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => CheckLogin(),
          )
        ],
        child: Consumer<CheckLogin>(
          builder: (context, value, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light().copyWith(
              useMaterial3: true,
            ),
            routerConfig: value.isLogin
                ? RouterConfigCustom.router
                : LoginRouterConfigCustom.routerLogin,
          ),
        ),
      ),
    );
  }
}
