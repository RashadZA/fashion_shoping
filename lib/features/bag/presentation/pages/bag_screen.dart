import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_flat_button.dart';
import 'package:fashion_shoping/core/widgets/core_textField.dart';
import 'package:fashion_shoping/features/bag/controllers/bag_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {

  final BagScreenController controller = Get.find<BagScreenController>();

  @override
  void initState(){
    super.initState();
    controller.init();
  }

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
            Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "My Bag",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: redAccentColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: redAccentColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: redAccentColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoreTextField(
              fillColor: redAccentColor,
              hintText: "Enter your promo code",
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              controller: controller.promoCodeTextEditController,
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tota amount:"),
                Text("1000"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CoreFlatButton(
              onPressed: (){},
              borderRadius: 30,
              text: "CHECK OUT",
              isGradientBg: true,
            ),
          ],
        ),
      ),
    );
  }
}
