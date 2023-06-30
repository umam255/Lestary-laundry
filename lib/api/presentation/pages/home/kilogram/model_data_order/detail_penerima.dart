class DetailPenerima {
  String name;
  String phoneNumber;
  String address;
  String addressDetail;
  String pengiriman;
  String instruksiTambahan;
  DetailPenerima({
    required this.name,
    required this.phoneNumber,
    required this.address,
    this.addressDetail = '',
    required this.pengiriman,
    this.instruksiTambahan = '',
  });
}
