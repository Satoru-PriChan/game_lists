import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GamesListElement {
  int? count;
  String? next;
  String? previous;
  List<Game>? results;

  GamesListElement({this.count, this.next, this.previous, this.results});

  factory GamesListElement.fromJson(Map<String, dynamic> json) => _$GamesListElementFromJson(json);
  Map<String, dynamic> toJson() => _$GamesListElementToJson(this);
}

@JsonSerializable()
class Game {
  int? id;
  String? slug;
  String? name;
  String? released;
  bool? tba;
  String? backgroundImage;
  double? rating;
  int? ratingTop;
  List<Rating>? ratings;
  int? ratingsCount;
  int? reviewsTextCount;
  int? added;
  AddedByStatus? addedByStatus;
  int? metacritic;
  int? playtime;
  int? suggestionsCount;
  String? updated;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<Platform>? platforms;
  List<Platform>? parentPlatforms;
  List<Genre>? genres;
  List<Store>? stores;
  List<Tag>? tags;
  ESRBRating? esrbRating;
  List<ShortScreenshots> shortScreenshots;

  Game(
      this.id,
      this.slug,
      this.name,
      this.released,
      this.tba,
      this.backgroundImage,
      this.rating,
      this.ratingTop,
      this.ratings,
      this.ratingsCount,
      this.reviewsTextCount,
      this.added,
      this.addedByStatus,
      this.metacritic,
      this.playtime,
      this.suggestionsCount,
      this.updated,
      this.reviewsCount,
      this.saturatedColor,
      this.dominantColor,
      this.platforms,
      this.parentPlatforms,
      this.genres,
      this.stores,
      this.tags,
      this.esrbRating,
      this.shortScreenshots);

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}

@JsonSerializable()
class Rating {
  int? id;
  String? title;
  int? count;
  double? percent;

  Rating(this.id, this.title, this.count, this.percent);

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}

@JsonSerializable()
class AddedByStatus {
  int? yet;
  int? owned;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  AddedByStatus(this.yet, this.owned, this.beaten, this.toplay, this.dropped,
      this.playing);

  factory AddedByStatus.fromJson(Map<String, dynamic> json) => _$AddedByStatusFromJson(json);
  Map<String, dynamic> toJson() => _$AddedByStatusToJson(this);
}

@JsonSerializable()
class Platform {
  PlatformDetail? platform;
  String? releasedAt;
  Requirements? requirementsEn;
  Requirements? requirementsRu;

  Platform(
      this.platform, this.releasedAt, this.requirementsEn, this.requirementsRu);

  factory Platform.fromJson(Map<String, dynamic> json) => _$PlatformFromJson(json);
  Map<String, dynamic> toJson() => _$PlatformToJson(this);
}

@JsonSerializable()
class PlatformDetail {
  int? id;
  String? name;
  String? slug;
  String? image;
  int? yearEnd;
  int? yearStart;
  int? gamesCount;
  String? imageBackground;

  PlatformDetail(this.id, this.name, this.slug, this.image, this.yearEnd,
      this.yearStart, this.gamesCount, this.imageBackground);

  factory PlatformDetail.fromJson(Map<String, dynamic> json) => _$PlatformDetailFromJson(json);
  Map<String, dynamic> toJson() => _$PlatformDetailToJson(this);
}

@JsonSerializable()
class Requirements {
  String? minimum;
  String? recommended;

  Requirements(this.minimum, this.recommended);

  factory Requirements.fromJson(Map<String, dynamic> json) => _$RequirementsFromJson(json);
  Map<String, dynamic> toJson() => _$RequirementsToJson(this);
}

@JsonSerializable()
class Genre {
  String? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;

  Genre(this.id, this.name, this.slug, this.gamesCount, this.imageBackground);

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@JsonSerializable()
class Store {
  int? id;
  StoreDetail? store;

  Store(this.id, this.store);

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
  Map<String, dynamic> toJson() => _$StoreToJson(this);
}

@JsonSerializable()
class StoreDetail {
  int? id;
  String? name;
  String? slug;
  String? domain;
  int? gamesCount;
  String? imageBackground;

  StoreDetail(this.id, this.name, this.slug, this.domain, this.gamesCount,
      this.imageBackground);

  factory StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);
  Map<String, dynamic> toJson() => _$StoreDetailToJson(this);
}

@JsonSerializable()
class Tag {
  int? id;
  String? name;
  String? slug;
  String? language;
  int? gamesCount;
  String? imageBackground;

  Tag(this.id, this.name, this.slug, this.language, this.gamesCount,
      this.imageBackground);

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
  Map<String, dynamic> toJson() => _$TagToJson(this);
}


@JsonSerializable()
class ESRBRating {
  int? id;
  String? name;
  String? slug;

  ESRBRating(this.id, this.name, this.slug);

  factory ESRBRating.fromJson(Map<String, dynamic> json) => _$ESRBRatingFromJson(json);
  Map<String, dynamic> toJson() => _$ESRBRatingToJson(this);
}

@JsonSerializable()
class ShortScreenshots {
  int? id;
  String? image;

  ShortScreenshots(this.id, this.image);

  factory ShortScreenshots.fromJson(Map<String, dynamic> json) => _$ShortScreenshotsFromJson(json);
  Map<String, dynamic> toJson() => _$ShortScreenshotsToJson(this);
}