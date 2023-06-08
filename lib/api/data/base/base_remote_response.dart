// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/api/data/base/status_response.dart';
part 'base_remote_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: true)
class BaseRemoteResponse<R> {
  StatusResponse? error;
  R? data;

  BaseRemoteResponse({
    this.error,
    this.data,
  });

  factory BaseRemoteResponse.fromJson(
          Map<String, dynamic> json, R Function(Object? json) fromJsonR) =>
      _$BaseRemoteResponseFromJson(json, fromJsonR);

  Map<String, dynamic> toJson(Object Function(R value) toJsonR) =>
      _$BaseRemoteResponseToJson(this, toJsonR);
}
