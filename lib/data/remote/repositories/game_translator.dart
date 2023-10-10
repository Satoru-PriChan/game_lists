import 'package:games_list/UI/home/domain/home_entity.dart';
import 'package:games_list/data/remote/api_client/entities/games_list_element.dart';

abstract class GameTranslator {
  // TODO: - implement
  factory GameTranslator.Default() {
    return _GameTranslator();
  }

  List<HomeEntity> generate(GamesListElement entity);
}

class _GameTranslator implements GameTranslator {
  @override
  List<HomeEntity> generate(GamesListElement entity) {
    List<HomeEntity> result = [];
    entity.results?.forEach((element) {
      if (element.id != null && element.name != null) {
        result.add(
          HomeEntity(
              element.id!,
              element.name!,
              element.released != null ? DateTime.parse(element.released!) : null,
              element.tba != null ? element.tba! : false,
              element.backgroundImage != null ? Uri.parse(element.backgroundImage!) : null,
              element.rating,
              element.ratingTop,
              generateRating(element.ratings),
              element.ratingsCount,
              element.metacritic,
              generatePlatform(element.platforms), 
              generateGenre(element.genres),
              generateTag(element.tags),
              element.shortScreenshots
                  ?.map((e) => e.image)
                  .whereType<String>().toList()
                  .map((e) => Uri.parse(e))
                  .toList()
          )
        );
      }
    });
    return result;
  }

  List<HomeRatingEntity>? generateRating(List<Rating>? ratings) {
    List<HomeRatingEntity> result = [];
    if (List<Rating> == null) { return null; }
    ratings!.forEach((element) {
      if (
        element.id == null ||
            element.title == null ||
            element.count == null ||
            element.percent == null
      ) {
        return;
      }

      result.add(
          HomeRatingEntity(
              element.id!,
              element.title!,
              element.count!,
              element.percent!
          )
      );
    });
    return result;
  }

  List<HomePlatformEntity>? generatePlatform(List<Platform>? platforms) {
    if (platforms == null) { return null; }
    List<PlatformDetail> platformDetails = platforms
        .map((e) => e.platform)
        .whereType<PlatformDetail>().toList();
    List<HomePlatformEntity> result = [];
    platformDetails.forEach((element) {
      if (element.id == null || element.name == null) { return; }
      result.add(
        HomePlatformEntity(
            element.id!,
            element.name!
        )
      );
    });
    return result;
  }

  List<HomeGenreEntity>? generateGenre(List<Genre>? genres) {
    if (genres == null) {
      return null;
    }
    List<HomeGenreEntity>? result = [];
    genres.forEach((element) {
      if (element.id == null || element.name == null) {
        return;
      }
      result.add(HomeGenreEntity(
          element.id!,
          element.name!
      ));
    });
    return result;
  }

  List<HomeTagEntity>? generateTag(List<Tag>? tags) {
    if (tags == null) { return null; }
    List<HomeTagEntity> result = [];
    tags.forEach((element) {
      if (element.id == null || element.name == null) { return; }
      result.add(
        HomeTagEntity(
            element.id!,
            element.name!
        )
      );
    });
    return result;
  }
}

