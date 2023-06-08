// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginDataUser {
  int id;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  String createdAt;
  String updatedAt;
  String username;
  String phoneNumber;

  LoginDataUser(
    this.id,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.username,
    this.phoneNumber,
  );
}
