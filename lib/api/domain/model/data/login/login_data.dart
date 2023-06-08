// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/api/domain/model/data/login/login_data_user.dart';

class LoginData {
  String jwt;
  LoginDataUser user;

  LoginData(
    this.jwt,
    this.user,
  );
}
