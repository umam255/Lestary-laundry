import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/api/domain/model/data/profile/profile_data.dart';

abstract class ProfileRepository {
  Future<ResultEntity<ProfileData>> fetchProfile(
    AuthenticationHeadersRequest header,
  );
}
