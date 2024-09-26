class PaymentMethodResponseModel {
  List<CardDataModel>? data;

  PaymentMethodResponseModel({this.data});

  PaymentMethodResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CardDataModel>[];
      json['data'].forEach((v) {
        data!.add(CardDataModel.fromJson(v));
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

class CardDataModel {
  String? cardId;
  String? cardName;
  String? cardNumber;
  String? cardExpiredDate;
  String? cardCVV;

  CardDataModel({
    this.cardId,
    this.cardName,
    this.cardNumber,
    this.cardExpiredDate,
    this.cardCVV,
  });

  CardDataModel.fromJson(Map<String, dynamic> json) {
    cardId = json['cardId'];
    cardName = json['cardName'];
    cardNumber = json['cardNumber'];
    cardExpiredDate = json['cardExpiredDate'];
    cardCVV = json['cardCVV'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardId'] = cardId;
    data['cardName'] = cardName;
    data['cardNumber'] = cardNumber;
    data['cardExpiredDate'] = cardExpiredDate;
    data['cardCVV'] = cardCVV;
    return data;
  }
}
