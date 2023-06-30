// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/detail_penerima.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/layanan_data.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/total_data.dart';

class OrderData {
  TotalData totalData;
  LayananData layananData;
  DetailPenerima? detailPenerima;
  OrderData({
    required this.totalData,
    required this.layananData,
    this.detailPenerima,
  });
}
