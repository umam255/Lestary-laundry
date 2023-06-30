import 'dart:convert';
import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/data/model/profile/profile_data_response.dart';
import 'package:lestari_laundry/api/data/service/remote/profile/profile_remote_services.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/api/domain/model/data/profile/profile_data.dart';
import 'package:lestari_laundry/api/domain/repository/profile/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final profileRemoteService = ProfileRemoteService();

  @override
  Future<ResultEntity<ProfileData>> fetchProfile(
      AuthenticationHeadersRequest header) async {
    try {
      final response = await profileRemoteService.fetchProfile(
        header,
      );
      if (response.statusCode == 200) {
        var data = ProfileDataResponse.fromJson(jsonDecode(response.body))
            .toProfileData();
        return ResultSuccess<ProfileData>(data);
      } else {
        return ResultError<ProfileData>(message: response.body);
      }
    } catch (e) {
      return ResultError(
        message: 'Terjadi masalah jaringan. Silakan coba lagi.',
      );
    }
  }
}
