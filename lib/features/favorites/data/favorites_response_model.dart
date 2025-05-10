class FavoritesResponseModel {
  List<FavoritesItemDataModel>? data;

  FavoritesResponseModel({this.data});

  FavoritesResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <FavoritesItemDataModel>[];
      json['data'].forEach((v) {
        data!.add(FavoritesItemDataModel.fromJson(v));
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

class FavoritesItemDataModel {
  String? itemId;
  String? itemImageUrl;
  String? itemName;
  String? itemDescription;
  String? itemColor;
  String? itemSize;
  int? itemUnits;
  double? itemUnitPrice;
  double? itemTotalPrice;
  double? rating;
  int? totalRating;
  double? discount;
  String? discountType;

  FavoritesItemDataModel(
      {this.itemId,
        this.itemImageUrl,
        this.itemName,
        this.itemDescription,
        this.itemColor,
        this.itemSize,
        this.itemUnits,
        this.itemUnitPrice,
        this.itemTotalPrice,
        this.rating,
        this.totalRating,
        this.discount,
        this.discountType,});

  FavoritesItemDataModel.fromJson(Map<String, dynamic> json) {
    itemId = json['itemId'];
    itemImageUrl = json['itemImageUrl'];
    itemName = json['itemName'];
    itemDescription = json['itemDescription'];
    itemColor = json['itemColor'];
    itemSize = json['itemSize'];
    itemUnits = json['itemUnits'];
    itemUnitPrice = double.parse("${json['itemUnitPrice'] ?? 0}");
    itemTotalPrice = double.parse("${json['itemTotalPrice'] ?? 0}");
    rating = double.parse("${json['rating'] ?? 0}");
    totalRating = json['totalRating'];
    discount = double.parse("${json['discount'] ?? 0}");
    discountType = json['discountType'];
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
    data['rating'] = rating;
    data['totalRating'] = totalRating;
    data['discount'] = discount;
    data['discountType'] = discountType;
    return data;
  }
}