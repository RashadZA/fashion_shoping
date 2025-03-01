class OrderStatusModel {
  String status;
  bool isSelected;

  OrderStatusModel({
    required this.status,
    required this.isSelected,
  });
}
List<OrderStatusModel> orderStatusList = [
  OrderStatusModel(
    status: "Delivered",
    isSelected: true,
  ),
  OrderStatusModel(
    status: "Processing",
    isSelected: false,
  ),
  OrderStatusModel(
    status: "Cancelled",
    isSelected: false,
  ),
];
