import 'package:get/get.dart';

class GamesListTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'home_title': 'Games List',
      'ui_error_connection_failure': 'Failed to communicate with the server. Please try again later.',
    },
    'ja_JP': {
      'home_title': 'ゲームリスト',
      'ui_error_connection_failure': 'サーバーとの通信に失敗しました。後で再試行してください。',
    },
    'zh_CN': {
      'home_title': '电脑游戏清单',
      'ui_error_connection_failure': '与服务器通信失败。请稍后再试。',
    },
    'zh_TW': {
      'home_title': '電腦遊戲清單',
      'ui_error_connection_failure': '與伺服器通訊失敗。請稍後再試',
    }
  };
}