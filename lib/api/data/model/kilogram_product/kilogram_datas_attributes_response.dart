// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/api/data/model/kilogram_product/product_image_data_response.dart';
import 'package:lestari_laundry/api/data/model/kilogram_product/product_images_response.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/kilogram_datas_attributes.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image_data.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_images_attributes.dart';
part 'kilogram_datas_attributes_response.g.dart';

abstract class KilogramDataAttributesResponseMapper {
  KilogramAttributes toKilogramAttributes();
}

@JsonSerializable()
class KilogramDataAttributesResponse
    implements KilogramDataAttributesResponseMapper {
  String? productName;
  String? productType;
  String? productDescription;
  String? productPrice;
  String? minimumOrder;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  List? productVariant;
  ProductImageResponse? productImage;

  KilogramDataAttributesResponse({
    this.productName,
    this.productType,
    this.productDescription,
    this.productPrice,
    this.minimumOrder,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.productVariant,
    this.productImage,
  });

  factory KilogramDataAttributesResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramDataAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramDataAttributesResponseToJson(this);

  @override
  KilogramAttributes toKilogramAttributes() {
    return KilogramAttributes(
        productName ?? '',
        productType ?? '',
        productDescription ?? '',
        productPrice ?? '',
        minimumOrder ?? '',
        createdAt ?? '',
        updatedAt ?? '',
        publishedAt ?? '',
        productVariant ?? [],
        productImage?.toProductImage() ??
            ProductImage(
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
                  ),),
            ),);
  }
}
