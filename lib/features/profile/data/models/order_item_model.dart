class OrderItemModel{
  final String orderItemTrackingNumber;
  final String orderImageUrl;
  final String orderItemName;
  final String orderItemDescription;
  final String orderItemColor;
  final String orderItemSize;
  final int orderItemUnits;
  final String orderItemUnitPrice;
  final String orderItemTotalPrice;

  OrderItemModel({
    required this.orderItemTrackingNumber,
    required this.orderImageUrl,
    required this.orderItemName,
    required this.orderItemDescription,
    required this.orderItemColor,
    required this.orderItemSize,
    required this.orderItemUnits,
    required this.orderItemUnitPrice,
    required this.orderItemTotalPrice,
  });

  factory OrderItemModel.fromJsonToModel(Map<String, dynamic> item) {
    return OrderItemModel(
      orderItemTrackingNumber: item['orderItemTrackingNumber'],
      orderImageUrl: item['orderImageUrl'],
      orderItemName: item['orderItemName'],
      orderItemDescription: item['orderItemDescription'],
      orderItemColor: item['orderItemColor'],
      orderItemSize: item['orderItemSize'],
      orderItemUnits: item['orderItemUnits'],
      orderItemUnitPrice: item['orderItemUnitPrice'],
      orderItemTotalPrice: item['orderItemTotalPrice'],
    );
  }
}