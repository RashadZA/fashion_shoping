import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/data/models/oder_model.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_item_card.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  final OrderModel orderModel;
  const OrderDetailsScreen({
    super.key,
    required this.orderModel,
  });

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width - (defaultPadding + defaultPadding);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Order Details",
          style: AppTextTheme.text18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding,
        ),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth * .7,
                child: Text(
                  "Order No: ${widget.orderModel.orderNo}",
                  style: AppTextTheme.text16.copyWith(
                    overflow: TextOverflow.visible,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidth * .3,
                child: Text(
                  widget.orderModel.orderDate,
                  textAlign: TextAlign.end,
                  style:
                      AppTextTheme.text16.copyWith(color: secondaryTextColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: deviceWidth - 100,
                child: RichText(
                  text: TextSpan(
                    text: "Tracking Number: ",
                    style: AppTextTheme.text14.copyWith(color: secondaryTextColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.orderModel.orderTrackingNumber,
                        style: AppTextTheme.text14,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  textAlign: TextAlign.end,
                  widget.orderModel.orderStatus,
                  style: AppTextTheme.text18.copyWith(
                      color: widget.orderModel.orderStatus == delivered ? greenColor
                          : widget.orderModel.orderStatus == cancelled ? redAccentColor : blueAccentColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${widget.orderModel.orderQuantity} items",
            style:
                AppTextTheme.text15.copyWith(overflow: TextOverflow.visible),
          ),
          ListView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.orderModel.orderItems.length,
              // padding: const EdgeInsets.all(0.0),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    index == 0
                        ? const SizedBox(
                      height: 15,
                    )
                        : const SizedBox(
                      height: 0.0,
                      width: 0.0,
                    ),
                    OrderItemCard(
                      orderItemModel: widget.orderModel.orderItems[index],
                    ),
                    SizedBox(
                      height: index + 1 == widget.orderModel.orderItems.length ? 5 : 15,
                    ),
                  ],
                );
              }),
          SizedBox(
            width: deviceWidth,
            child: Text(
              widget.orderModel.orderShippingAddress,
              textAlign: TextAlign.end,
              style: AppTextTheme.text15.copyWith(overflow: TextOverflow.visible),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Payment Method",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 30,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 5,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: masterCardColorOne,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: masterCardColorTwo,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        widget.orderModel.orderPaymentMethod,
                        style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Delivery Method",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Text(
                    widget.orderModel.orderDeliveryMethod,
                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Discount",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Text(
                    widget.orderModel.orderDiscount,
                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    "Total Amount",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Text(
                    ":",
                    style: AppTextTheme.text16.copyWith(color: secondaryTextColor),
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 150,
                  child: Text(
                    widget.orderModel.orderTotalAmount,
                    style: AppTextTheme.text16.copyWith(overflow: TextOverflow.visible),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoreButton(
                  onPressed: (){},
                  child: Container(
                    height: 40,
                    width: deviceWidth * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: defaultCardColorOne,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: const Offset(0, 1),
                          color: defaultBorderColorOne.withOpacity(0.3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 2,
                        color: defaultBorderColorOne,
                      )
                    ),
                    child: Text(
                      "Reorder",
                      textAlign: TextAlign.center,
                      style: AppTextTheme.text16,
                    ),
                  ),
                ),
                CoreButton(
                  onPressed: (){},
                  child: Container(
                    height: 40,
                    width: deviceWidth * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: const Offset(0, 1),
                          color: primaryColor.withOpacity(0.5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 2,
                        color: primaryColor,
                      )
                    ),
                    child: Text(
                      "Leave Feedback",
                      textAlign: TextAlign.center,
                      style: AppTextTheme.text16.copyWith(color: whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
class UpperPart extends StatelessWidget {
  const UpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


