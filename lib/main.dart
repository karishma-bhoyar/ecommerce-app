import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/pages/cart_page.dart';

import 'package:flutter_ecommerce_project/pages/login_page.dart';
import 'package:flutter_ecommerce_project/utils/routes.dart';
import 'package:flutter_ecommerce_project/utils/widget/themes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const Cartpage(),
      },
    );
  }
}
