class OrderItemModel {
  String? orderItemTrackingNumber;
  String? orderImageUrl;
  String? orderItemName;
  String? orderItemDescription;
  String? orderItemColor;
  String? orderItemSize;
  int? orderItemUnits;
  String? orderItemUnitPrice;
  String? orderItemTotalPrice;

  OrderItemModel(
      {this.orderItemTrackingNumber,
        this.orderImageUrl,
        this.orderItemName,
        this.orderItemDescription,
        this.orderItemColor,
        this.orderItemSize,
        this.orderItemUnits,
        this.orderItemUnitPrice,
        this.orderItemTotalPrice});

  OrderItemModel.fromJson(Map<String, dynamic> json) {
    orderItemTrackingNumber = json['orderItemTrackingNumber'];
    orderImageUrl = json['orderImageUrl'];
    orderItemName = json['orderItemName'];
    orderItemDescription = json['orderItemDescription'];
    orderItemColor = json['orderItemColor'];
    orderItemSize = json['orderItemSize'];
    orderItemUnits = json['orderItemUnits'];
    orderItemUnitPrice = json['orderItemUnitPrice'];
    orderItemTotalPrice = json['orderItemTotalPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orderItemTrackingNumber'] = orderItemTrackingNumber;
    data['orderImageUrl'] = orderImageUrl;
    data['orderItemName'] = orderItemName;
    data['orderItemDescription'] = orderItemDescription;
    data['orderItemColor'] = orderItemColor;
    data['orderItemSize'] = orderItemSize;
    data['orderItemUnits'] = orderItemUnits;
    data['orderItemUnitPrice'] = orderItemUnitPrice;
    data['orderItemTotalPrice'] = orderItemTotalPrice;
    return data;
  }
}
// class OrderItemModel{
//   final String orderItemTrackingNumber;
//   final String orderImageUrl;
//   final String orderItemName;
//   final String orderItemDescription;
//   final String orderItemColor;
//   final String orderItemSize;
//   final int orderItemUnits;
//   final String orderItemUnitPrice;
//   final String orderItemTotalPrice;
//
//   OrderItemModel({
//     required this.orderItemTrackingNumber,
//     required this.orderImageUrl,
//     required this.orderItemName,
//     required this.orderItemDescription,
//     required this.orderItemColor,
//     required this.orderItemSize,
//     required this.orderItemUnits,
//     required this.orderItemUnitPrice,
//     required this.orderItemTotalPrice,
//   });
//
//   factory OrderItemModel.fromJsonToModel(Map<String, dynamic> item) {
//     return OrderItemModel(
//       orderItemTrackingNumber: item['orderItemTrackingNumber'],
//       orderImageUrl: item['orderImageUrl'],
//       orderItemName: item['orderItemName'],
//       orderItemDescription: item['orderItemDescription'],
//       orderItemColor: item['orderItemColor'],
//       orderItemSize: item['orderItemSize'],
//       orderItemUnits: item['orderItemUnits'],
//       orderItemUnitPrice: item['orderItemUnitPrice'],
//       orderItemTotalPrice: item['orderItemTotalPrice'],
//     );
//   }
// }
