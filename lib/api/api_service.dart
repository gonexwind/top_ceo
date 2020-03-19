import 'package:http/http.dart' show Client;
import 'package:top_ceo/model/ceo.dart';

class ApiService {
  final String baseUrl = 'http://www.mocky.io/v2/5e721d5c3300008c0044c6db';
  Client client = Client();

  Future<List<Ceo>> getCeo() async {
    final response = await client.get(baseUrl);

    if (response.statusCode == 200) return ceoFromJson(response.body);
    return null;
  }
}
