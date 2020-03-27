import 'package:http/http.dart' show Client;
import 'package:top_ceo/model/ceo.dart';

class ApiService {
  final String baseUrl = 'http://www.mocky.io/v2/5e7d1c28350000109a06a5ab';
  Client client = Client();

  Future<List<Ceo>> getCeo() async {
    final response = await client.get(baseUrl);

    if (response.statusCode == 200) return ceoFromJson(response.body);
    return null;
  }
}
