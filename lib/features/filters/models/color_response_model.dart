class ColorResponseModel {
  List<ColorDataModel>? data;

  ColorResponseModel({this.data});

  ColorResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ColorDataModel>[];
      json['data'].forEach((v) {
        data!.add(ColorDataModel.fromJson(v));
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

class ColorDataModel {
  String? name;
  String? id;
  String? colorCode;

  ColorDataModel({this.name, this.id, this.colorCode});

  ColorDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    colorCode = json['colorCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['colorCode'] = colorCode;
    return data;
  }

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ColorDataModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}