class ItemResponseModel {
  List<ItemDataModel>? data;

  ItemResponseModel({this.data});

  ItemResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ItemDataModel>[];
      json['data'].forEach((v) {
        data!.add(ItemDataModel.fromJson(v));
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
class ItemDataModel {
  String? itemId;
  String? itemImageUrl;
  String? itemName;
  String? itemDescription;
  String? itemColor;
  String? itemSize;
  int? itemUnits;
  double? itemUnitPrice;
  double? itemTotalPrice;
  String? itemType;
  double? itemUnitRegularPrice;
  double? itemDiscountPrice;
  double? itemDiscountPercentage;

  ItemDataModel(
      {this.itemId,
        this.itemImageUrl,
        this.itemName,
        this.itemDescription,
        this.itemColor,
        this.itemSize,
        this.itemUnits,
        this.itemUnitPrice,
        this.itemTotalPrice,
        this.itemType,
        this.itemUnitRegularPrice,
        this.itemDiscountPrice,
        this.itemDiscountPercentage,
      });

  ItemDataModel.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    itemImageUrl = json['itemImageUrl'];
    itemName = json['itemName'];
    itemDescription = json['itemDescription'];
    itemColor = json['itemColor'];
    itemSize = json['itemSize'];
    itemUnits = json['itemUnits'];
    itemUnitPrice = json['itemUnitPrice'];
    itemTotalPrice = json['itemTotalPrice'];
    itemType = json['itemType'];
    itemUnitRegularPrice = json['itemUnitRegularPrice'];
    itemDiscountPrice = json['itemDiscountPrice'];
    itemDiscountPercentage = json['itemDiscountPercentage'];
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
    data['itemType'] = itemType;
    data['itemUnitRegularPrice'] = itemUnitRegularPrice;
    data['itemDiscountPrice'] = itemDiscountPrice;
    data['itemDiscountPercentage'] = itemDiscountPercentage;
    return data;
  }
}