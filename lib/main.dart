import 'package:fashion_shoping/core/routes/app_pages.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: "Fashion Shopping",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: AppPages.routes,
      initialBinding: BindingsX.initialBindigs(),
      theme: AppTheme.lightTheme,
      unknownRoute: AppPages.unknownRoute,
    );
    // return MaterialApp(
    //   title: 'Fashion Shopping',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: SignInScreen(),
    // );
  }
}
