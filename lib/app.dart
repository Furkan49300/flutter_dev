import 'package:epsi_shop_eval/page/cart_page.dart';
import 'package:epsi_shop_eval/page/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
final _router = GoRouter(routes: [
  GoRoute( path: "/", builder: (_, __) => CartPage(),
      routes: [
        GoRoute(path: "checkout", builder: (_, __) => CheckoutPage()),
      ])
],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),

        useMaterial3: true,
      ),
      routerConfig:_router,
    );
  }
}