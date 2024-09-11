import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/profile/data/models/oder_model.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_card.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_category_model.dart';
import 'package:fashion_shoping/features/profile/presentation/widgets/order/order_status_selector.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<OrderStatusModel> orderStatusModelList = orderStatusList;
  List<OrderModel> orderModelList = [];
  List<OrderModel> deliveredOrderModelList = [];
  List<OrderModel> processingOrderModelList = [];
  List<OrderModel> cancelledOrderModelList = [];
  String selectedTypeOfOrder = delivered;
  bool isDataLoading = false;

  @override
  void initState() {
    super.initState();
    setData();
  }

  Future<void> init() async {
    setState(() {
      isDataLoading = true;
    });
    await Future.wait([
      setData(),
    ]);
    setState(() {
      isDataLoading = false;
    });
  }

  Future<void> setData() async {
    deliveredOrderModelList = [];
    processingOrderModelList = [];
    cancelledOrderModelList = [];
    orderModelList = getOrderDemoData();
    for (OrderModel order in orderModelList) {
      if (order.orderStatus == delivered) {
        deliveredOrderModelList.add(order);
      } else if (order.orderStatus == cancelled) {
        cancelledOrderModelList.add(order);
      } else {
        processingOrderModelList.add(order);
      }
    }
    setState(() {});
    debugPrint("Order List Length: ${orderModelList.length}");
    debugPrint(
        "Delivered Order List Length: ${deliveredOrderModelList.length}");
    debugPrint(
        "Processing Order List Length: ${processingOrderModelList.length}");
    debugPrint(
        "Cancelled Order List Length: ${cancelledOrderModelList.length}");
  }

  Future<void> onOrderStatusPressedFunction({required int x}) async {
    for (OrderStatusModel element in orderStatusModelList) {
      setState(() {
        element.isSelected = false;
      });
    }
    setState(() {
      selectedTypeOfOrder = orderStatusModelList[x].status;
      orderStatusModelList[x].isSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "My Orders",
                  style: AppTextTheme.text26,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OrderStatusSelector(
            orderStatusList: orderStatusModelList,
            onOrderStatusPressed: (index) async {
              setState(() {
                isDataLoading = true;
              });
              await Future.wait([
                onOrderStatusPressedFunction(x: index),
                setData(),
              ]);
              setState(() {
                isDataLoading = false;
              });
              debugPrint("Selected Type Of Order: $selectedTypeOfOrder");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 125,
            child: isDataLoading == true
                ? const ListViewPlaceHolder().showShimmer()
                : ListView.builder(
              shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 40,top: 0,),
                    itemCount: selectedTypeOfOrder == delivered
                        ? deliveredOrderModelList.length
                        : selectedTypeOfOrder == cancelled
                            ? cancelledOrderModelList.length
                            : processingOrderModelList.length,
                    itemBuilder: (context, index) {
                      return OrderCard(
                        orderModel: selectedTypeOfOrder == delivered
                            ? deliveredOrderModelList[index]
                            : selectedTypeOfOrder == cancelled
                                ? cancelledOrderModelList[index]
                                : processingOrderModelList[index],
                      );
                    }),
          ),
        ],
      ),
    );
  }
}
