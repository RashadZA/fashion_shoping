class HomeScreenSliderResponseModel {
  List<HomeScreenSliderDataModel>? data;

  HomeScreenSliderResponseModel({this.data});

  HomeScreenSliderResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <HomeScreenSliderDataModel>[];
      json['data'].forEach((v) {
        data!.add(HomeScreenSliderDataModel.fromJson(v));
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

class HomeScreenSliderDataModel {
  String? title;
  String? imageUrl;

  HomeScreenSliderDataModel({this.title, this.imageUrl});

  HomeScreenSliderDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['imageUrl'] = imageUrl;
    return data;
  }
}