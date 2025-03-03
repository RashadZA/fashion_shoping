import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/core/widgets/core_text_field.dart';
import 'package:fashion_shoping/features/shippingAddresses/controllers/add_shipping_address_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddShippingAddressScreen extends GetWidget<AddShippingAddresseScreenController> {
  const AddShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: scaffoldAppBarColor,
          centerTitle: true,
          leading: IconButton(
            onPressed: ()=> Get.back(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Obx(()=> Text(
            "${controller.shippingAddress.value.shippingAddressId != null ? "Edit" : "Add"} Shipping Address",
            style: AppTextTheme.text18,
          ),
          ),
        ),
        body: Obx( () => SizedBox(
            width: Get.width,
            height: Get.height,
            child: controller.addShippingAddressScreenDataProcessing.value
                ? Center(
              child: defaultLoaderOfCircularProgressIndicator(color: primaryColor),
            ) : ListView(
              padding: const EdgeInsets.all(15),
              children: [
                titleText(title: "Name"),
                CoreTextField(
                  hintText: "Name",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: controller.nameTextEditController,
                  prefixIcon: Icons.person,
                ),
                const SizedBox(
                  height: 10,
                ),
                titleText(title: "Address"),
                CoreTextField(
                  maxLines: 5,
                  hintText: "Address",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: controller.roadAddressTextEditController,
                  prefixIcon: Icons.location_on_outlined,
                ),
                const SizedBox(
                  height: 10,
                ),
                titleText(title: "City"),
                CoreTextField(
                  hintText: "City",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: controller.cityTextEditController,
                  prefixIcon: Icons.location_city_outlined,
                ),
                const SizedBox(
                  height: 10,
                ),
                titleText(title: "State / Region"),
                CoreTextField(
                  hintText: "State / Region",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: controller.stateOrRegionTextEditController,
                  prefixIcon: Icons.public,
                ),
                const SizedBox(
                  height: 10,
                ),
                titleText(title: "Country"),
                CoreTextField(
                  hintText: "Country",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: controller.countryTextEditController,
                  prefixIcon: Icons.flag,
                ),
                const SizedBox(
                  height: 25,
                ),
                CoreButton(
                  onPressed: ()=> controller.saveAddressButtonOnPressedMethod(),
                    child: Container(
                      height: 45,
                      width: Get.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(defaultBorderRadius),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                            color: primaryColor.withValues(alpha:0.5),
                          ),
                          BoxShadow(
                            blurRadius: 1,
                            offset: const Offset(0, 0.5),
                            color: primaryColor.withValues(alpha:0.5),
                          ),
                        ]
                      ),
                      child: controller.saveAddressButtonIsTapped.value ? defaultLoaderOfCupertinoActivity(radius: 15) : Text(
                        "${controller.shippingAddress.value.shippingAddressId != null ? "Edit" : "Add"} Address",
                        textAlign: TextAlign.center,
                        style: AppTextTheme.text18.copyWith(
                          color: whiteColor
                        ),
                      ),
                    ),
                ),

              ],
            )
        )

        ),
      ),
    );
  }
}
