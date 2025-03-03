import 'package:animations/animations.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/main/controllers/main_screen_controller.dart';
import 'package:fashion_shoping/features/main/presentation/widgets/page_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends GetWidget<MainScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=>SafeArea(
      top: false,
      child: PageWrapper(
        child: Scaffold(
          bottomNavigationBar: BottomNavyBar(
            itemCornerRadius: 10,
            selectedIndex: controller.newIndex.value,
            items: bottomNavigationBarItemList
                .map(
                  (item) => BottomNavyBarItem(
                icon: item.icon,
                title:  Text(item.title, overflow: TextOverflow.ellipsis),
                activeColor: item.activeColor,
                inactiveColor: item.inActiveColor,
              ),
            )
                .toList(),
            onItemSelected: (currentIndex) => controller.bottomNavigationBarOnItemSelected(currentIndex),
          ),
          body: PageTransitionSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                ) {
              return FadeThroughTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: screensList[controller.newIndex.value],
          ),
        ),
      ),
    ),);
  }
}

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return PageWrapper(
//       child: Scaffold(
//         bottomNavigationBar: BottomNavyBar(
//           itemCornerRadius: 10,
//           selectedIndex: newIndex,
//           items: bottomNavigationBarItemList
//               .map(
//                 (item) => BottomNavyBarItem(
//               icon: item.icon,
//               title: Text(item.title),
//               activeColor: item.activeColor,
//               inactiveColor: item.inActiveColor,
//             ),
//           )
//               .toList(),
//           onItemSelected: (currentIndex) {
//             newIndex = currentIndex;
//             setState(() {});
//           },
//         ),
//         body: PageTransitionSwitcher(
//           duration: const Duration(seconds: 1),
//           transitionBuilder: (
//               Widget child,
//               Animation<double> animation,
//               Animation<double> secondaryAnimation,
//               ) {
//             return FadeThroughTransition(
//               animation: animation,
//               secondaryAnimation: secondaryAnimation,
//               child: child,
//             );
//           },
//           child: screensList[newIndex],
//         ),
//       ),
//     );
//   }
// }
