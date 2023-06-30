// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/api/domain/model/data/profile/name_data.dart';
part 'name_data_response.g.dart';

abstract class NameDataResponseMapper {
  NameData toNameData();
}

@JsonSerializable()
class NameDataResponse implements NameDataResponseMapper {
  int? id;
  String? firstName;
  String? lastName;
  NameDataResponse({
    this.id,
    this.firstName,
    this.lastName,
  });

  factory NameDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NameDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NameDataResponseToJson(this);

  @override
  NameData toNameData() {
    return NameData(id ?? 0, firstName ?? '', lastName ?? '');
  }
}
