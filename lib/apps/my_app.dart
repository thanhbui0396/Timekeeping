import 'package:app_timekeeping/apps/routers/router.dart';
import 'package:app_timekeeping/apps/routers/router_name.dart';
import 'package:app_timekeeping/providers/check.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CheckLogin(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(),
        // darkTheme: ThemeCustom.darkTheme,
        // themeMode: ThemeMode.light,
        initialRoute: RouterName.rootPage,
        onGenerateRoute: RouterCustom.onGenerateRoute,
      ),
    );
  }
}
