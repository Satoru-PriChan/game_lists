import 'package:games_list/data/remote/api_client/entities/games_list_element.dart';

abstract class GameTranslator {
  // TODO: - implement
  factory GameTranslator.Default() {
    return _GameTranslator();
  }
}

class _GameTranslator implements GameTranslator {
  // TODO: - implement
}

