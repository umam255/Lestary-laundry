import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/api/data/model/kilogram_product/kilogram_data_response.dart';
import 'package:lestari_laundry/api/data/model/kilogram_product/product_meta_data_response.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/kilogram_data.dart';
part 'kilogram_collection_data_response.g.dart';

abstract class KilogramCollectionDataResponseMapper {
  List<KilogramData> toKilogramData();
}

@JsonSerializable()
class KilogramCollectionDataResponse
    implements KilogramCollectionDataResponseMapper {
  List<KilogramDataResponse>? data;
  ProductMetaDataResponse? meta;

  KilogramCollectionDataResponse({this.data, this.meta});

  factory KilogramCollectionDataResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramCollectionDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramCollectionDataResponseToJson(this);

  @override
  List<KilogramData> toKilogramData() {
    return data?.map((e) => e.toKilogramData()).toList() ?? List.empty();
  }
}
