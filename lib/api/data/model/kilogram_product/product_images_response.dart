// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:lestari_laundry/api/data/model/kilogram_product/product_image_data_response.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image_data.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_images_attributes.dart';
part 'product_images_response.g.dart';

abstract class ProductImageResponseMapper {
  ProductImage toProductImage();
}

@JsonSerializable()
class ProductImageResponse implements ProductImageResponseMapper {
  ProductImageDataResponse? data;

  ProductImageResponse({
    this.data,
  });

  factory ProductImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageResponseToJson(this);

  @override
  ProductImage toProductImage() {
    return ProductImage(
      data?.toProductImageData() ??
          ProductImageData(
            0,
            ProductImageAttributes(
              '',
              '',
              '',
              0,
              0,
              '',
              '',
              '',
              '',
              0,
              '',
              '',
              '',
              '',
              '',
              '',
            ),
          ),
    );
  }
}
