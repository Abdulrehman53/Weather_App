import 'package:http/http.dart';

class NetworkingHelper {
  String url;
  NetworkingHelper(this.url);
  Future apiWeatherData() async {
    Response response = await get(url);
    print(url);
    if (response.statusCode == 200) {
      // var temp = jsonDecode(response.body)['weather'][0]['main'];
      //print(temp);
      return response.body;
    }
  }
}
