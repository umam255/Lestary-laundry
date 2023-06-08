// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:lestari_laundry/api/data/model/login/login_data_response.dart';
import 'package:lestari_laundry/api/domain/model/data/login/login_data.dart';
import 'package:lestari_laundry/api/domain/model/data/login/login_data_user.dart';
part 'login_collection_response.g.dart';

abstract class LoginCollectionResponseMapper {
  LoginData toLoginData();
}

@JsonSerializable()
class LoginCollectionResponse implements LoginCollectionResponseMapper {
  String? jwt;
  LoginDataResponse? user;

  LoginCollectionResponse({
    this.jwt,
    this.user,
  });

  factory LoginCollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginCollectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginCollectionResponseToJson(this);

  @override
  LoginData toLoginData() {
    return LoginData(
      jwt ?? '',
      user?.toLoginDataUser() ??
          LoginDataUser(
            0,
            '',
            '',
            false,
            false,
            '',
            '',
            '',
            '',
          ),
    );
  }
}
