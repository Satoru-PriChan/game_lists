import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'entities/games_list_element.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: "https://rawg-video-games-database.p.rapidapi.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

    @GET("/games")
    @Headers(<String, dynamic>{
      "X-RapidAPI-Host" : "rawg-video-games-database.p.rapidapi.com",
    })
  Future<List<GamesListElement>> getGames();
}