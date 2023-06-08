import 'dart:convert';

import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/data/base/base_remote_response.dart';
import 'package:lestari_laundry/api/data/model/login/login_collection_response.dart';
import 'package:lestari_laundry/api/data/model/login/login_data_response.dart';
import 'package:lestari_laundry/api/data/service/remote/login/login_remote_services.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/api/domain/model/data/login/login_data.dart';
import 'package:lestari_laundry/api/domain/model/request/login/login_request.dart';
import 'package:lestari_laundry/api/domain/repository/login/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final loginRemoteService = LoginRemoteService();

  @override
  Future<ResultEntity<LoginData>> submitLogin(LoginRequest request) async {
    try {
      final response = await loginRemoteService.postLogin(request);

      print("STATUS CODE: ${response.statusCode}");

      if (response.statusCode == 200) {
        print('Disini Error');
        var data = LoginCollectionResponse.fromJson(jsonDecode(response.body))
            .toLoginData();
        print('TOKEN: ${data.jwt}');
        final token = AuthenticationHeadersRequest(data.jwt);
        return ResultSuccess<LoginData>(data);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
