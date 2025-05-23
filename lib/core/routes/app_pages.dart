import 'package:fashion_shoping/core/API/service/api_repositories.dart';
import 'package:fashion_shoping/features/auth/controllers/forgot_password_screen_controller.dart';
import 'package:fashion_shoping/features/auth/controllers/signin_screen_controller.dart';
import 'package:fashion_shoping/features/auth/controllers/signout_screen_controller.dart';
import 'package:fashion_shoping/features/auth/presentation/pages/forgot_password.dart';
import 'package:fashion_shoping/features/auth/presentation/pages/signin_screen.dart';
import 'package:fashion_shoping/features/auth/presentation/pages/signup_screen.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:fashion_shoping/features/bag/controllers/check_out_screen_controller.dart';
import 'package:fashion_shoping/features/bag/presentation/pages/bag_screen.dart';
import 'package:fashion_shoping/features/bag/presentation/pages/check_out_screen.dart';
import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:fashion_shoping/features/favorites/presentation/pages/favorites_screen.dart';
import 'package:fashion_shoping/features/filters/controllers/filter_screen_controller.dart';
import 'package:fashion_shoping/features/filters/presentation/filter_screen.dart';
import 'package:fashion_shoping/features/home/controllers/home_screen_controller.dart';
import 'package:fashion_shoping/features/home/controllers/home_see_all_items_screen_controller.dart';
import 'package:fashion_shoping/features/home/presentation/pages/home_screen.dart';
import 'package:fashion_shoping/features/home/presentation/pages/home_see_all_items_screen.dart';
import 'package:fashion_shoping/features/main/controllers/main_screen_controller.dart';
import 'package:fashion_shoping/features/main/presentation/pages/main_screen.dart';
import 'package:fashion_shoping/features/paymentMethod/controllers/payment_method_screen_controller.dart';
import 'package:fashion_shoping/features/paymentMethod/presentation/payment_method_screen.dart';
import 'package:fashion_shoping/features/product/controllers/product_details_screen_controller.dart';
import 'package:fashion_shoping/features/product/controllers/product_rating_and_review_screen_controller.dart';
import 'package:fashion_shoping/features/product/presentation/pages/product_details_screen.dart';
import 'package:fashion_shoping/features/product/presentation/pages/product_rating_and_review_screen.dart';
import 'package:fashion_shoping/features/profile/controllers/orders/my_orders_screen_controller.dart';
import 'package:fashion_shoping/features/profile/controllers/orders/order_details_screen_controller.dart';
import 'package:fashion_shoping/features/profile/controllers/profile_screen_controller.dart';
import 'package:fashion_shoping/features/profile/controllers/promoCode/promo_code_screen_controller.dart';
import 'package:fashion_shoping/features/profile/controllers/setting/setting_screen_controller.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/orders/my_orders_screen.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/orders/order_details_screen.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/profile_screen.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/promoCode/promo_code_screen.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/setting/setting_screen.dart';
import 'package:fashion_shoping/features/shippingAddresses/controllers/add_shipping_address_screen_controller.dart';
import 'package:fashion_shoping/features/shippingAddresses/controllers/shipping_addresses_screen_controller.dart';
import 'package:fashion_shoping/features/shippingAddresses/presentation/pages/add_shipping_address_screen.dart';
import 'package:fashion_shoping/features/shippingAddresses/presentation/pages/shipping_addresses_screen.dart';
import 'package:fashion_shoping/features/shop/controllers/shop_catalog_screen_controller.dart';
import 'package:fashion_shoping/features/shop/controllers/shop_screen_controller.dart';
import 'package:fashion_shoping/features/shop/presentation/pages/shop_catalog_screen.dart';
import 'package:fashion_shoping/features/shop/presentation/pages/shop_screen.dart';
import 'package:fashion_shoping/features/startUp/splash/splash_screen.dart';
import 'package:fashion_shoping/features/startUp/splash/splash_screen_controller.dart';
import 'package:fashion_shoping/features/startUp/unknown/unknown_route_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {

  static final unknownRoute = GetPage(
    name: Routes.unknown404,
    page: () => const UnknownRouteScreen(),
  );
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<SplashScreenController>(() => SplashScreenController()),
      ),
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SignInScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<SignInScreenController>(() => SignInScreenController()),
      ),
    ),
    GetPage(
      name: Routes.forgotScreen,
      page: () => const ForgotPasswordScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ForgotPasswordScreenController>(() => ForgotPasswordScreenController()),
      ),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<SignUpScreenController>(() => SignUpScreenController()),
      ),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => const MainScreen(),
      binding: BindingsBuilder(
        () => Get.lazyPut<MainScreenController>(() => MainScreenController()),
      ),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<HomeScreenController>(() => HomeScreenController()),
      ),
    ),
    GetPage(
      name: Routes.shopScreen,
      page: () => const ShopScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ShopScreenController>(() => ShopScreenController()),
      ),
    ),
    GetPage(
      name: Routes.bagScreen,
      page: () => const BagScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<BagScreenController>(() => BagScreenController()),
      ),
    ),
    GetPage(
      name: Routes.favoritesScreen,
      page: () => const FavoritesScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<FavoritesScreenController>(() => FavoritesScreenController()),
      ),
    ),
    GetPage(
      name: Routes.profileScreen,
      page: () => const ProfileScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ProfileScreenController>(() => ProfileScreenController()),
      ),
    ),
    GetPage(
      name: Routes.myOrdersScreen,
      page: () => const MyOrdersScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<MyOrdersScreenController>(() => MyOrdersScreenController()),
      ),
    ),
    GetPage(
      name: Routes.orderDetailsScreen,
      page: () => const OrderDetailsScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<OrderDetailsScreenController>(() => OrderDetailsScreenController()),
      ),
    ),
    GetPage(
      name: Routes.settingScreen,
      page: () => const SettingScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<SettingScreenController>(() => SettingScreenController()),
      ),
    ),
    GetPage(
      name: Routes.checkOutScreen,
      page: () => const CheckOutScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<CheckOutScreenController>(() => CheckOutScreenController()),
      ),
    ),
    GetPage(
      name: Routes.shippingAddressesScreen,
      page: () => const ShippingAddressesScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ShippingAddressesScreenController>(() => ShippingAddressesScreenController()),
      ),
    ),
    GetPage(
      name: Routes.addShippingAddressesScreen,
      page: () => const AddShippingAddressScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<AddShippingAddresseScreenController>(() => AddShippingAddresseScreenController()),
      ),
    ),
    GetPage(
      name: Routes.promoCodesScreen,
      page: () => const PromoCodeScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<PromoCodeScreenController>(() => PromoCodeScreenController()),
      ),
    ),
    GetPage(
      name: Routes.paymentMethodScreen,
      page: () => const PaymentMethodScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<PaymentMethodScreenController>(() => PaymentMethodScreenController()),
      ),
    ),
    GetPage(
      name: Routes.productDetailsScreen,
      page: () => const ProductDetailsScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ProductDetailsScreenController>(() => ProductDetailsScreenController()),
      ),
    ),
    GetPage(
      name: Routes.homeSeeAllItemsScreen,
      page: () => const HomeSeeAllItemsScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<HomeSeeAllItemsScreenController>(() => HomeSeeAllItemsScreenController()),
      ),
    ),
    GetPage(
      name: Routes.productRatingAndReviewScreen,
      page: () => const ProductRatingAndReviewScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ProductRatingAndReviewScreenController>(() => ProductRatingAndReviewScreenController()),
      ),
    ),
    GetPage(
      name: Routes.shopCatalogScreen,
      page: () => const ShopCatalogScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<ShopCatalogScreenController>(() => ShopCatalogScreenController()),
      ),
    ),
    GetPage(
      name: Routes.filterScreen,
      page: () => const FilterScreen(),
      binding: BindingsBuilder(
            () => Get.lazyPut<FilterScreenController>(() => FilterScreenController()),
      ),
    ),
  ];
}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {
      Get.lazyPut<APIRepository>(() => APIRepository(), fenix: true);
      Get.lazyPut<HomeScreenController>(() => HomeScreenController(), fenix: true);
      Get.lazyPut<ShopScreenController>(() => ShopScreenController(), fenix: true);
      Get.lazyPut<BagScreenController>(() => BagScreenController(), fenix: true);
      Get.lazyPut<FavoritesScreenController>(() => FavoritesScreenController(), fenix: true);
      Get.lazyPut<ProfileScreenController>(() => ProfileScreenController(), fenix: true);
    });
  }
}
