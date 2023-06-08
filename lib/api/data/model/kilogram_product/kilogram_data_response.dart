// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:lestari_laundry/api/data/model/kilogram_product/kilogram_datas_attributes_response.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/kilogram_data.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/kilogram_datas_attributes.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_image_data.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/product_images_attributes.dart';

part 'kilogram_data_response.g.dart';

abstract class KilogramDataResponseMapper {
  KilogramData toKilogramData();
}

@JsonSerializable()
class KilogramDataResponse implements KilogramDataResponseMapper {
  int? id;
  KilogramDataAttributesResponse? attributes;

  KilogramDataResponse({
    this.id,
    this.attributes,
  });

  factory KilogramDataResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramDataResponseToJson(this);

  @override
  KilogramData toKilogramData() {
    return KilogramData(
      id ?? 0,
      attributes?.toKilogramAttributes() ??
          KilogramAttributes(
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            [],
            ProductImageData(
              0,
              ProductImageAttributes(
                  '', '', '', 0, 0, '', '', '', '', 0, '', '', '', '', '', ''),
            ),
          ),
    );
  }
}
