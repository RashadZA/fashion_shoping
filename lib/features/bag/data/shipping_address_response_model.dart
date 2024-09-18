class ShippingAddressResponseModel {
  List<ShippingAddressDataModel>? data;

  ShippingAddressResponseModel({this.data});

  ShippingAddressResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ShippingAddressDataModel>[];
      json['data'].forEach((v) {
        data!.add(ShippingAddressDataModel.fromJson(v));
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

class ShippingAddressDataModel {
  String? shippingAddressId;
  String? shippingAddressName;
  String? shippingAddressRoad;
  String? shippingAddressCity;
  String? shippingAddressRegion;
  String? shippingAddressZIPCode;
  String? shippingAddressZIPCountry;

  ShippingAddressDataModel({
    this.shippingAddressId,
    this.shippingAddressName,
    this.shippingAddressRoad,
    this.shippingAddressCity,
    this.shippingAddressRegion,
    this.shippingAddressZIPCode,
    this.shippingAddressZIPCountry,
  });

  ShippingAddressDataModel.fromJson(Map<String, dynamic> json) {
    shippingAddressId = json['shippingAddressId'];
    shippingAddressName = json['shippingAddressName'];
    shippingAddressRoad = json['shippingAddressRoad'];
    shippingAddressCity = json['shippingAddressCity'];
    shippingAddressRegion = json['shippingAddressRegion'];
    shippingAddressZIPCode = json['shippingAddressZIPCode'];
    shippingAddressZIPCountry = json['shippingAddressZIPCountry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['shippingAddressId'] = shippingAddressId;
    data['shippingAddressName'] = shippingAddressName;
    data['shippingAddressRoad'] = shippingAddressRoad;
    data['shippingAddressCity'] = shippingAddressCity;
    data['shippingAddressRegion'] = shippingAddressRegion;
    data['shippingAddressZIPCode'] = shippingAddressZIPCode;
    data['shippingAddressZIPCountry'] = shippingAddressZIPCountry;
    return data;
  }
}
