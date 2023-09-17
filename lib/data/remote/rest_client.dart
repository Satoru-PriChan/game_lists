import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'entities/games_list_element.dart';

@RestApi(baseUrl: "https://rawg-video-games-database.p.rapidapi.com/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/games")
  Future<List<GamesListElement>> getGames();
}