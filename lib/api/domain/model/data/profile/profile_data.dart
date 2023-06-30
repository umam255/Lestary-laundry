import 'package:lestari_laundry/api/domain/model/data/profile/address_data.dart';
import 'package:lestari_laundry/api/domain/model/data/profile/name_data.dart';

class ProfileData {
  int id;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  String createdAt;
  String updatedAt;
  String username;
  String phoneNumber;
  NameData name;
  AddressData address;
  ProfileData(
    this.id,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.createdAt,
    this.updatedAt,
    this.username,
    this.phoneNumber,
    this.name,
    this.address,
  );
}
