import 'package:games_list/data/remote/api_client/rest_client.dart';

import '../api_client/entities/games_list_element.dart';
import 'game_translator.dart';

abstract class GameRepositoryProtocol {
  Future<GamesListElement> getGames();
}

class GameRepository implements GameRepositoryProtocol {

  RestClient restClient;
  GameTranslator gameTranslator;

  GameRepository(this.restClient, this.gameTranslator) {}

  factory GameRepository.Default() {
    return GameRepository(RestClient.Default(), GameTranslator.Default());
  }

  @override
  Future<GamesListElement> getGames() {
    // TODO: - Translate GamesListElement to entities used in UI
    return restClient.getGames();
  }
}