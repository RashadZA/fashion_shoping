class PromoCodesResponseModel {
  List<PromoCodesDataModel>? data;

  PromoCodesResponseModel({this.data});

  PromoCodesResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <PromoCodesDataModel>[];
      json['data'].forEach((v) {
        data!.add(PromoCodesDataModel.fromJson(v));
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

class PromoCodesDataModel {
  String? promoCodesId;
  String? promoCodesTitle;
  int? promoCodesValue;
  int? promoCodesRemainDays;
  String? promoCodesType;
  String? promoCodeImage;

  PromoCodesDataModel(
      {this.promoCodesId,
        this.promoCodesTitle,
        this.promoCodesValue,
        this.promoCodesRemainDays,
        this.promoCodesType,
        this.promoCodeImage});

  PromoCodesDataModel.fromJson(Map<String, dynamic> json) {
    promoCodesId = json['promoCodesId'];
    promoCodesTitle = json['promoCodesTitle'];
    promoCodesValue = json['promoCodesValue'];
    promoCodesRemainDays = json['promoCodesRemainDays'];
    promoCodesType = json['promoCodesType'];
    promoCodeImage = json['promoCodeImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['promoCodesId'] = promoCodesId;
    data['promoCodesTitle'] = promoCodesTitle;
    data['promoCodesValue'] = promoCodesValue;
    data['promoCodesRemainDays'] = promoCodesRemainDays;
    data['promoCodesType'] = promoCodesType;
    data['promoCodeImage'] = promoCodeImage;
    return data;
  }
}