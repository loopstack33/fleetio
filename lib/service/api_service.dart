import 'package:http/http.dart' as http;
import 'api_urils.dart';

class ApiService {

  ////////////////////////Get ALL VEHICLES DATA
  Future<http.Response> getAllVehicles() async {
    final response = await http.get(
        Uri.parse(
            '${ApiURls.baseURL}${ApiURls.vehicles}'),
        headers: ApiURls.httpHeaders);
    return response;
  }

}
