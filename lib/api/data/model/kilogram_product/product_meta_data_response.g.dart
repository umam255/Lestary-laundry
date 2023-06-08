// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_meta_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMetaDataResponse _$ProductMetaDataResponseFromJson(
        Map<String, dynamic> json) =>
    ProductMetaDataResponse(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      pageCount: json['pageCount'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ProductMetaDataResponseToJson(
        ProductMetaDataResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
