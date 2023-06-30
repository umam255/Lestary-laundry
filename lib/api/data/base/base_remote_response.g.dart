// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRemoteResponse<R> _$BaseRemoteResponseFromJson<R>(
  Map<String, dynamic> json,
  R Function(Object? json) fromJsonR,
) =>
    BaseRemoteResponse<R>(
      data: _$nullableGenericFromJson(json['data'], fromJsonR),
      error: json['error'] == null
          ? null
          : StatusResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseRemoteResponseToJson<R>(
  BaseRemoteResponse<R> instance,
  Object? Function(R value) toJsonR,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonR),
      'error': instance.error,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
