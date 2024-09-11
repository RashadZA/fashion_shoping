import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/presentation/pages/orders/my_orders_screen.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/profile_card_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "My Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rashaduzzaman Ananda",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("rashad.ananda@gmail.com"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyOrdersScreen(),
                  ),
                );
              },
              child: const ProfileCardButton(
                buttonTitle: "My Orders",
                buttonSubTitle: "Already have 12 orders",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreButton(
              onPressed: () {},
              child: const ProfileCardButton(
                buttonTitle: "Shipping Addresses",
                buttonSubTitle: "3 addresses",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreButton(
              onPressed: () {},
              child: const ProfileCardButton(
                buttonTitle: "Payment Methods",
                buttonSubTitle: "Visa ***123",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreButton(
              onPressed: () {},
              child: const ProfileCardButton(
                buttonTitle: "Promo Codes",
                buttonSubTitle: "You have special promo codes",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreButton(
              onPressed: () {},
              child: const ProfileCardButton(
                buttonTitle: "My Reviews",
                buttonSubTitle: "Reviews for 4 items",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreButton(
              onPressed: () {},
              child: const ProfileCardButton(
                buttonTitle: "Settings",
                buttonSubTitle: "Notifications, Password",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
