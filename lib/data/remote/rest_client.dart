import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import '../const.dart';
import 'entities/games_list_element.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: "https://rawg-video-games-database.p.rapidapi.com/")
abstract class RestClient {
  factory RestClient(Dio dio) {
    return _RestClient(dio);
  }

  factory RestClient.Default() {
    // dio
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        maxWidth: 999
    ));
    dio.options.headers["X-RapidAPI-Key"] = Const.apiKey;
    return RestClient(dio);
  }

  @GET("/games")
  @Headers(<String, dynamic>{
    "X-RapidAPI-Host" : "rawg-video-games-database.p.rapidapi.com",
  })
  Future<List<GamesListElement>> getGames(
    {@Query("key") String rawgKey = Const.rawgKey,}
  );
}