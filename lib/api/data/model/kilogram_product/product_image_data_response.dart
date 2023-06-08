// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/api/data/model/kilogram_product/product_images_attributes_response.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image_data.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_images_attributes.dart';
part 'product_image_data_response.g.dart';

abstract class ProductImageDataResponseMapper {
  ProductImageData toProductImageData();
}

@JsonSerializable()
class ProductImageDataResponse implements ProductImageDataResponseMapper {
  int? id;
  ProductImagesAttributesResponse? attributes;

  ProductImageDataResponse({
    this.id,
    this.attributes,
  });

  factory ProductImageDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageDataResponseToJson(this);

  @override
  ProductImageData toProductImageData() {
    return ProductImageData(
      id ?? 0,
      attributes?.toProductImageAttributes() ??
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
    );
  }
}
