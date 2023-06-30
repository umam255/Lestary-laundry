import 'package:http/http.dart';
import 'package:lestari_laundry/api/base/base_config/base_config.dart';
import 'package:lestari_laundry/api/domain/base/authentication_headers_request.dart';

class ProfileRemoteService {
  Client client = Client();

  Map<String, dynamic> queryParams = {
    'populate': '*',
  };

  Future<Response> fetchProfile(AuthenticationHeadersRequest header) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN,
      BaseConfig.PROFILE,
      queryParams,
    );

    print("URL PROFILE: ${url.toString()}");

    return client.get(url, headers: header.toHeader());
  }
}
