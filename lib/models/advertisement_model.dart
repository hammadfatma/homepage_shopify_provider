class AdvertisementModel{
  final String id;
  final String imageURL;
  final String title;

  AdvertisementModel({required this.id,required this.imageURL,required this.title});

  factory AdvertisementModel.fromJson(Map<String, dynamic> json) {
    return AdvertisementModel(
        id : json['id'],
        imageURL : json['imageURL'],
        title : json['title']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['imageURL'] = imageURL;
    data['title'] = title;
    return data;
  }
}