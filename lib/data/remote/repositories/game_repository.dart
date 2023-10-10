import 'package:games_list/data/remote/api_client/rest_client.dart';

import '../../../UI/home/domain/home_entity.dart';
import '../api_client/entities/games_list_element.dart';
import 'game_translator.dart';

abstract class GameRepositoryProtocol {
  Future<List<HomeGameEntity>> getGames();
}

class GameRepository implements GameRepositoryProtocol {

  RestClient restClient;
  GameTranslator gameTranslator;

  GameRepository(this.restClient, this.gameTranslator) {}

  factory GameRepository.Default() {
    return GameRepository(RestClient.Default(), GameTranslator.Default());
  }

  @override
  Future<List<HomeGameEntity>> getGames() async {
    final response = await restClient.getGames();
    return gameTranslator.generate(response);
  }
}