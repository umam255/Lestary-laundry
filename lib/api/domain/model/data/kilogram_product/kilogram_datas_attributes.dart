// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image_data.dart';

class KilogramAttributes {
  String productName;
  String productType;
  String productDescription;
  String productPrice;
  String minimumOrder;
  String createdAt;
  String updatedAt;
  String publishedAt;
  List productVariant;
  ProductImage productImage;

  KilogramAttributes(
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
  );
}
