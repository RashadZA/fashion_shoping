import 'package:fashion_shoping/features/login/presentation/pages/signin_screen.dart';
import 'package:fashion_shoping/features/main/pages/main_screen.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/orders/my_orders_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInScreen(),
    );
  }
}
