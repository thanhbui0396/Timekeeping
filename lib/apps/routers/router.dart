import 'package:app_timekeeping/apps/root_page.dart';
import 'package:app_timekeeping/apps/routers/router_name.dart';
import 'package:app_timekeeping/pages/auth/register_page.dart';
import 'package:app_timekeeping/pages/error/error_page.dart';
import 'package:app_timekeeping/pages/home/option_person/home_page/create_book/create_book_page.dart';
import 'package:app_timekeeping/pages/home/option_person/home_page/details_book_page/details_book_page.dart';
import 'package:app_timekeeping/pages/home/option_person/home_page/home_page.dart';
import 'package:app_timekeeping/pages/options_page/options_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouterCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterName.rootPage:
        return page(const RootPage());
      case RouterName.homePage:
        return page(const HomePage());
      case RouterName.registerPage:
        return page(const RegisterPage());
      case RouterName.optionsPage:
        return page(const OptionsPage());
      case RouterName.createBookPage:
        return page(const CreateBookPage());
      case RouterName.detailBookPage:
        return page(const DetailsBookPage());
      default:
        return _errorPage();
    }
  }

  static _errorPage() {
    page(const ErrorPage());
  }

  static PageTransition<dynamic> page(Widget routerPage) =>
      PageTransition(child: routerPage, type: PageTransitionType.fade);
}
