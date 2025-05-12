class ShopCategoryItemResponseModel {
  List<ShopCategoryItemDataModel>? data;

  ShopCategoryItemResponseModel({this.data});

  ShopCategoryItemResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ShopCategoryItemDataModel>[];
      json['data'].forEach((v) {
        data!.add(ShopCategoryItemDataModel.fromJson(v));
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

class ShopCategoryItemDataModel {
  String? id;
  String? imageUrl;
  String? name;

  ShopCategoryItemDataModel({this.id, this.imageUrl, this.name});

  ShopCategoryItemDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imageUrl'] = imageUrl;
    data['name'] = name;
    return data;
  }
}