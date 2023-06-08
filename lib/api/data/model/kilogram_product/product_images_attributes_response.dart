// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_images_attributes.dart';
part 'product_images_attributes_response.g.dart';

abstract class ProductImagesAttributesResponseMapper {
  ProductImageAttributes toProductImageAttributes();
}

@JsonSerializable()
class ProductImagesAttributesResponse
    implements ProductImagesAttributesResponseMapper {
  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  String? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  String? previewUrl;
  String? provider;
  String? provider_metadata;
  String? createdAt;
  String? updatedAt;

  ProductImagesAttributesResponse({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.provider_metadata,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductImagesAttributesResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductImagesAttributesResponseToJson(this);

  @override
  ProductImageAttributes toProductImageAttributes() {
    return ProductImageAttributes(
      name ?? '',
      alternativeText ?? '',
      caption ?? '',
      width ?? 0,
      height ?? 0,
      formats ?? '',
      hash ?? '',
      ext ?? '',
      mime ?? '',
      size ?? 0,
      url ?? '',
      previewUrl ?? '',
      provider ?? '',
      provider_metadata ?? '',
      createdAt ?? '',
      updatedAt ?? '',
    );
  }
}
