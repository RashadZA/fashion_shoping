class MyBagResponseModel {
  List<MyBagItemDataModel>? data;

  MyBagResponseModel({this.data});

  MyBagResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <MyBagItemDataModel>[];
      json['data'].forEach((v) {
        data!.add(MyBagItemDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MyBagItemDataModel {
  String? itemId;
  String? itemImageUrl;
  String? itemName;
  String? itemDescription;
  String? itemColor;
  String? itemSize;
  int? itemUnits;
  double? itemUnitPrice;
  double? itemTotalPrice;

  MyBagItemDataModel(
      {this.itemId,
        this.itemImageUrl,
        this.itemName,
        this.itemDescription,
        this.itemColor,
        this.itemSize,
        this.itemUnits,
        this.itemUnitPrice,
        this.itemTotalPrice,});

  MyBagItemDataModel.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    itemImageUrl = json['itemImageUrl'];
    itemName = json['itemName'];
    itemDescription = json['itemDescription'];
    itemColor = json['itemColor'];
    itemSize = json['itemSize'];
    itemUnits = json['itemUnits'];
    itemUnitPrice = json['itemUnitPrice'];
    itemTotalPrice = json['itemTotalPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['itemId'] = itemId;
    data['itemImageUrl'] = itemImageUrl;
    data['itemName'] = itemName;
    data['itemDescription'] = itemDescription;
    data['itemColor'] = itemColor;
    data['itemSize'] = itemSize;
    data['itemUnits'] = itemUnits;
    data['itemUnitPrice'] = itemUnitPrice;
    data['itemTotalPrice'] = itemTotalPrice;
    return data;
  }
}