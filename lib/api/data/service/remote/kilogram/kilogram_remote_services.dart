import 'package:http/http.dart';
import 'package:lestari_laundry/api/base/base_config/base_config.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';

class KilogramRemoteService {
  Client client = Client();
  Map<String, dynamic> queryParams = {
    'populate': '*',
    'filters[productType][\$eq]': 'kilogram',
    // ? jadi 'filters[productType][\$eq]': 'piece',
  };

  Future<Response> getAllKilogramProduct(
    AuthenticationHeadersRequest header,
  ) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.KILOGRAM,
      queryParams,
    );
    final urlDecode = Uri.decodeComponent(url.toString());
    print("URL KILOGRAM: ${url.toString()}");

    return client.get(Uri.parse(urlDecode), headers: header.toHeader());
  }
}
