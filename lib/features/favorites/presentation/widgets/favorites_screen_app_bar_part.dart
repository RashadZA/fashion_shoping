import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesScreenAppBarPart extends GetWidget<FavoritesScreenController> {
  const FavoritesScreenAppBarPart({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return SliverAppBar(
            pinned: true,
            expandedHeight: 120.0,
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.search,
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(15),
              title: Text(
                'SliverTools Example',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green
                ),
              ),
            ),
          );
        }
    );
  }
}
class FavoritesScreenAppBarPartOld extends GetWidget<FavoritesScreenController> {
  const FavoritesScreenAppBarPartOld({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 15,
                right: 2
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Favorites",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        }
    );
  }
}