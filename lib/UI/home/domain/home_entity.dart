import 'dart:ffi';

import 'package:games_list/UI/home/common/ui_error.dart';

class HomeState {
  HomeEntity entity = HomeEntity(null);
  HomeLoadingState loadingState = HomeLoadingState.isFirstLoading;
  UIError? error = null;
}

enum HomeLoadingState {
  isFirstLoading,
  isAdditionLoading,
  loaded,
}

class HomeEntity {
  List<HomeGameEntity>? games;

  HomeEntity(this.games);
}

class HomeGameEntity {
  int id;
  String name;
  DateTime? released;
  bool tba;
  Uri? backgroundImage;
  double? rating;
  int? ratingTop;
  List<HomeRatingEntity>? ratings;
  int? ratingsCount;
  int? metacritic;
  List<HomePlatformEntity>? platforms;
  List<HomeGenreEntity>? genres;
  List<HomeTagEntity>? tags;
  List<Uri>? shortScreenshots;

  HomeGameEntity(
      this.id,
      this.name,
      this.released,
      this.tba,
      this.backgroundImage,
      this.rating,
      this.ratingTop,
      this.ratings,
      this.ratingsCount,
      this.metacritic,
      this.platforms,
      this.genres,
      this.tags,
      this.shortScreenshots);
}

class HomeRatingEntity {
  int id;
  String title;
  int count;
  double percent;

  HomeRatingEntity(this.id, this.title, this.count, this.percent);
}

class HomePlatformEntity {
  int id;
  String title;

  HomePlatformEntity(this.id, this.title);
}

class HomeGenreEntity {
  int id;
  String name;

  HomeGenreEntity(this.id, this.name);
}

class HomeTagEntity {
  int id;
  String name;

  HomeTagEntity(this.id, this.name);
}