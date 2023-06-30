import 'dart:convert';

import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/data/model/kilogram_product/kilogram_collection_data_response.dart';
import 'package:lestari_laundry/api/data/service/remote/kilogram/kilogram_remote_services.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/kilogram_data.dart';
import 'package:lestari_laundry/api/domain/repository/kilogram/kilogram_repository.dart';

class KilogramRepositoryImpl implements KilogramRepository {
  final kilogramRemoteService = KilogramRemoteService();

  @override
  Future<ResultEntity<List<KilogramData>>> fetchKilogram(
      AuthenticationHeadersRequest header) async {
    try {
      final response = await kilogramRemoteService.getAllKilogramProduct(
        header,
      );
      print("STATUS CODE KILOGRAM: ${response.statusCode}");

      if (response.statusCode == 200) {
        var data =
            KilogramCollectionDataResponse.fromJson(jsonDecode(response.body))
                    .data
                    ?.map((e) => e.toKilogramData())
                    .toList() ??
                List.empty();

        return ResultSuccess<List<KilogramData>>(data);
      } else {
        return ResultError<List<KilogramData>>(message: response.body);
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      return ResultError(message: e.toString());
    }
  }
}
