import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/components/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/shippingAddresses/controllers/shipping_addresses_screen_controller.dart';
import 'package:fashion_shoping/features/shippingAddresses/presentation/widgets/shipping_address_screen_shipping_address_card_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressesScreen extends GetWidget<ShippingAddressesScreenController> {
  const ShippingAddressesScreen({super.key});

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
          title: Text(
            "Shipping Address",
            style: AppTextTheme.text18,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Obx(()=> SizedBox(
          width: Get.width,
          height: Get.height,
          child: controller.shippingAddressScreenDataProcessing.value
              ? Center(
            child: defaultLoaderOfCircularProgressIndicator(),
          ) : ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 60),
            physics: const BouncingScrollPhysics(),
            itemCount: controller.shippingAddressList.length,
            itemBuilder: (context, index){
              return ShippingAddressScreenShippingAddressCardPart(
                shippingAddress: controller.shippingAddressList[index],
              );
            },
            separatorBuilder: (context, index){
              return const SizedBox(
                height: 15,
              );
            },
          ),
        ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CoreButton(
          onPressed: ()=> controller.addShippingAddressButtonOnPressedMethod(),
          child: SizedBox(
            width: 105,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                    Icons.add,
                  size: 25,
                  color: whiteColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 40,
                  child: Text(
                    "Add",
                    style: AppTextTheme.text16.copyWith(
                      color: whiteColor
                    ),
                  ),
                )
              ],
            ).defaultContainer(
              vP: 5,
              backgroundColor: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
