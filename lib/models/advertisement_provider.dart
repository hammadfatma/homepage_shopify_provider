import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:homepage_shopify_provider/models/advertisement_model.dart';

class AdvertisementProvider {
  List<AdvertisementModel> advertisement = [];
  List<AdvertisementModel> get advertisements => advertisement;
  Future<List<AdvertisementModel>> loadAdvertisement() async {
    final response = await rootBundle.loadString('assets/data/data.json');
    final data = jsonDecode(response);
    final ads = data['advertisements'] as List<dynamic>;
    return advertisement = ads.map((e) => AdvertisementModel.fromJson(e)).toList();
  }
}