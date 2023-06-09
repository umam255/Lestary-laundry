// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'status_response.g.dart';

@JsonSerializable()
class StatusResponse {
  int? status;
  String? name;
  String? message;
  dynamic details;

  StatusResponse({
    this.status,
    this.name,
    this.message,
    this.details,
  });

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusResponseToJson(this);
}
