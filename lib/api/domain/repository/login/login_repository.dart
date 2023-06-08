import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/domain/model/data/login/login_data.dart';
import 'package:lestari_laundry/api/domain/model/request/login/login_request.dart';

abstract class LoginRepository {
  Future<ResultEntity<LoginData>> submitLogin(LoginRequest request);
}
