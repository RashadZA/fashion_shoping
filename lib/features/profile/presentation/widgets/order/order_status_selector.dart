
import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/core/widgets/buttons/core_button.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_category_model.dart';
import 'package:flutter/material.dart';

class OrderStatusSelector extends StatefulWidget {
  const OrderStatusSelector({
    super.key,
    required this.orderStatusList,
    required this.onOrderStatusPressed,
  });

  final List<OrderStatusModel> orderStatusList;
  final Function(int) onOrderStatusPressed;

  @override
  State<OrderStatusSelector> createState() => _OrderStatusSelectorState();
}

class _OrderStatusSelectorState extends State<OrderStatusSelector> {
  Widget item(OrderStatusModel orderStatusModel, int index) {
    return Tooltip(
      message: "",
      child: AnimatedContainer(
        margin: const EdgeInsets.only(left: 15,right: 15),
        duration: const Duration(milliseconds: 500),
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color: orderStatusModel.isSelected == false
              ? null
              :  primaryTextColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: CoreButton(
          onPressed: () {
            widget.onOrderStatusPressed(index);
            for (var element in widget.orderStatusList) {
              element.isSelected = false;
            }

            orderStatusModel.isSelected = true;
            setState(() {});
          },
          child: Center(
            child: Text(orderStatusModel.status, style: AppTextTheme.text16.copyWith(color: orderStatusModel.isSelected == false
                ? primaryTextColor
                :  whiteColor,),),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          item(widget.orderStatusList[0], 0),
          item(widget.orderStatusList[1], 1),
          item(widget.orderStatusList[2], 2),
        ],
      ),
    );
  }
}
