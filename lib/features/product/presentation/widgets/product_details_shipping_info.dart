import 'package:fashion_shoping/core/components/widgets/buttons/container_button.dart';
import 'package:fashion_shoping/core/components/widgets/read_only_core_text_field.dart';
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsShippingInfo extends StatelessWidget {
  const ProductDetailsShippingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return Container(
              width: Get.width,
              height: (Get.height * 0.8),
              decoration: const BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
              ),
              child:  ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  Text(
                    "Shipping Info",
                    textAlign: TextAlign.center,
                    style: AppTextTheme.text26.copyWith(

                    ),
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child: Container(
                      width: 100,
                      height: 10,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  ReadOnlyCoreTextField(
                    labelText: "Name",
                    text: "Jhon Wick",
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadOnlyCoreTextField(
                    labelText: "Address",
                    text: "3 Newbridge Court",
                    prefixIcon: Icons.location_on_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadOnlyCoreTextField(
                    labelText: "City",
                    text: "Chino Hills",
                    prefixIcon: Icons.location_city_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadOnlyCoreTextField(
                    labelText: "State / Region",
                    text: "California",
                    prefixIcon: Icons.public,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadOnlyCoreTextField(
                    labelText: "Country",
                    text: "United States",
                    prefixIcon: Icons.flag,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContainerButton(
                    onPressed: ()=> Get.back(),
                    buttonText: "Close",
                    isButtonIsTapped: false,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              )
          );
        }
    );
  }
}