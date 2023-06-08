import 'package:lestari_laundry/api/base/result_entity/result_entity.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';
import 'package:lestari_laundry/api/domain/model/data/kilogram_product/kilogram_data.dart';

abstract class KilogramRepository {
  Future<ResultEntity<List<KilogramData>>> fetchKilogram(
    AuthenticationHeadersRequest header,
  );
}
