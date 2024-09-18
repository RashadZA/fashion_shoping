part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const unknown404 = _Paths.unknown404;
  static const splashScreen = _Paths.splashScreen;
  static const signInScreen = _Paths.signInScreen;
  static const forgotScreen = _Paths.forgotScreen;
  static const signUpScreen = _Paths.signUpScreen;
  static const mainScreen = _Paths.mainScreen;
  static const homeScreen = _Paths.homeScreen;
  static const shopScreen = _Paths.shopScreen;
  static const bagScreen = _Paths.bagScreen;
  static const favoritesScreen = _Paths.favoritesScreen;
  static const profileScreen = _Paths.profileScreen;
  static const myOrdersScreen = _Paths.myOrdersScreen;
  static const orderDetailsScreen = _Paths.orderDetailsScreen;
  static const settingScreen = _Paths.settingScreen;
  static const checkOutScreen = _Paths.checkOutScreen;
}

abstract class _Paths {
  static const unknown404 = '/404';
  static const splashScreen = '/splashScreen';
  static const forgotScreen = '/forgotScreen';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static const mainScreen = '/mainScreen';
  static const homeScreen = '/homeScreen';
  static const shopScreen = '/shopScreen';
  static const bagScreen = '/bagScreen';
  static const favoritesScreen = '/favoritesScreen';
  static const profileScreen = '/profileScreen';
  static const myOrdersScreen = '/myOrdersScreen';
  static const orderDetailsScreen = '/orderDetailsScreen';
  static const settingScreen = '/settingScreen';
  static const checkOutScreen = '/checkOutScreen';
}
