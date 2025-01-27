// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'banner_response.g.dart';

@JsonSerializable()
class BannerResponse {
  final bool? status;
  final String message;
  final List<BannerData> data;

  BannerResponse({
    this.status,
    required this.message,
    required this.data,
  });
  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}

@JsonSerializable()
class BannerData {
  final int id;
  final String? image;
  final Category category;
  final dynamic product;

  BannerData({
    required this.id,
    this.image,
    required this.category,
    this.product,
  });
  factory BannerData.fromJson(Map<String, dynamic> json) =>
      _$BannerDataFromJson(json);
}

@JsonSerializable()
class Category {
  final int id;
  final String? image;
  final String? name;
  Category({
    required this.id,
    this.image,
    this.name,
  });
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
