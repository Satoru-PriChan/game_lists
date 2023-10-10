import 'package:games_list/data/remote/repositories/game_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../domain/home_entity.dart';

class HomeController extends GetxController{
  late GameRepositoryProtocol _gameRepository;
  var entity = HomeEntity([]);

  HomeController(this._gameRepository);

  factory HomeController.Default() {
    return HomeController(GameRepository.Default());
  }

  _fetch() async {
    var gameEntity = await _gameRepository.getGames();
    entity = HomeEntity(gameEntity);
  }

  onAppear() async {
    await _fetch();
  }
}