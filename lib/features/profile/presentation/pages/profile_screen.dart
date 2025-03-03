import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/controllers/profile_screen_controller.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/profile_card_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileScreenController controller = Get.find<ProfileScreenController>();

  @override
  void initState(){
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context,orientation) {
          return SafeArea(
            top: false,
            child: Scaffold(
              backgroundColor: scaffoldBackgroundColor,
              body: SizedBox(
                width: Get.width,
                height: Get.height,
                child: Obx(()=> controller.profileScreenDataProcessing.value
                    ? SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Center(
                    child: defaultLoaderOfCircularProgressIndicatorForStateFullWidget(),
                  ),
                ) : ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30,),
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40,),
                    Text(
                      "My Profile",
                      style: AppTextTheme.text30,
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Get.width - 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rashaduzzaman Ananda",
                                style: AppTextTheme.text20.copyWith(
                                overflow: TextOverflow.visible,
                                )
                              ),
                              Text(
                                  "rashad.ananda@gmail.com",
                                style: AppTextTheme.text15.copyWith(
                                  fontWeight: FontWeight.normal,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              Text(
                                "+8801408687771",
                                style: AppTextTheme.text15.copyWith(
                                  fontWeight: FontWeight.normal,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    CoreButton(
                      onPressed: () => controller.myOrderCardOnPressed(),
                      child: ProfileCardButton(
                        buttonTitle: "My Orders",
                        buttonSubTitle: "Already have ${controller.processingOrderModelList.length} orders",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    CoreButton(
                      onPressed: () => controller.shippingAddressCardOnPressed(),
                      child: ProfileCardButton(
                        buttonTitle: "Shipping Addresses",
                        buttonSubTitle: "${controller.shippingAddressList.length} addresses",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    CoreButton(
                      onPressed: () => controller.paymentMethodCardOnPressed(),
                      child: ProfileCardButton(
                        buttonTitle: "Payment Methods",
                        buttonSubTitle: "${controller.cardList.length} cards",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    CoreButton(
                      onPressed: () => controller.promoCodesCardOnPressed(),
                      child: ProfileCardButton(
                        buttonTitle: "Promo Codes",
                        buttonSubTitle: "You have ${controller.promoCodesList.length} promo codes",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    CoreButton(
                      onPressed: () {},
                      child: const ProfileCardButton(
                        buttonTitle: "My Reviews",
                        buttonSubTitle: "Reviews for 4 items",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    CoreButton(
                      onPressed: () => controller.settingCardOnPressed(),
                      child: const ProfileCardButton(
                        buttonTitle: "Settings",
                        buttonSubTitle: "Notifications, Password",
                      ),
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
                ),
              ),
            ),
          );
        }
        );
  }
}
