import 'package:games_list/UI/home/common/ui_error.dart';
import 'package:games_list/data/remote/repositories/game_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../domain/home_entity.dart';

class HomeController extends GetxController{
  late GameRepositoryProtocol _gameRepository;
  var state = HomeState().obs;

  HomeController(this._gameRepository);

  factory HomeController.Default() {
    return HomeController(GameRepository.Default());
  }

  @override
  void onInit() {
    _fetch();
    super.onInit();
  }

  Future<void> refresh() async {
    _fetch();
  }

  Future<void> _fetch() async {
    switch (state.value.loadingState) {
      case HomeLoadingState.isFirstLoading:
        break;
      default:
        state.value.loadingState = HomeLoadingState.isAdditionLoading;
    }

    _gameRepository.getGames().then((value) {
      switch (state.value.loadingState) {
        case HomeLoadingState.isFirstLoading:
          state.value.entity.games = value;
        case HomeLoadingState.isAdditionLoading:
          state.value.entity.games?.addAll(value);
        default:
          break;
      }
      state.value.loadingState = HomeLoadingState.loaded;

    }).catchError((error) {
      state.value.error = UIError("ui_error_connection_failure".tr);
      state.value.loadingState = HomeLoadingState.loaded;
    });
  }
}