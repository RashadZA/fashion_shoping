part of 'design_utils.dart';

 List<BottomNavigationBarItemModel> bottomNavigationBarItemList = [
   BottomNavigationBarItemModel(
    title: "Home",
    icon: const Icon(Icons.home),
    activeColor:  primaryColor,
     inActiveColor: Colors.grey,
  ),
   BottomNavigationBarItemModel(
    title: "Shop",
    icon: const Icon(Icons.shopping_cart),
    activeColor:  primaryColor,
    inActiveColor: Colors.grey,
  ),
   BottomNavigationBarItemModel(
    title: "Bag",
    icon: const Icon(Icons.shopping_bag_rounded),
    activeColor:  primaryColor,
    inActiveColor: Colors.grey,
  ),
   BottomNavigationBarItemModel(
    title: "Favorites",
    icon: const Icon(Icons.favorite),
    activeColor:  primaryColor,
    inActiveColor: Colors.grey,
  ),
   BottomNavigationBarItemModel(
    title: "Profile",
    icon: const Icon(Icons.person),
    activeColor: primaryColor,
    inActiveColor: Colors.grey,
  ),
];

 List<Widget> screensList = [
 const HomeScreen(),
 const ShopScreen(),
 const BagScreen(),
 const FavoritesScreen(),
  const ProfileScreen()
];