// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_list_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamesListElement _$GamesListElementFromJson(Map<String, dynamic> json) =>
    GamesListElement(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GamesListElementToJson(GamesListElement instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      json['id'] as int?,
      json['slug'] as String?,
      json['name'] as String?,
      json['released'] as String?,
      json['tba'] as bool?,
      json['backgroundImage'] as String?,
      (json['rating'] as num?)?.toDouble(),
      json['ratingTop'] as int?,
      (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['ratingsCount'] as int?,
      json['reviewsTextCount'] as int?,
      json['added'] as int?,
      json['addedByStatus'] == null
          ? null
          : AddedByStatus.fromJson(
              json['addedByStatus'] as Map<String, dynamic>),
      json['metacritic'] as int?,
      json['playtime'] as int?,
      json['suggestionsCount'] as int?,
      json['updated'] as String?,
      json['reviewsCount'] as int?,
      json['saturatedColor'] as String?,
      json['dominantColor'] as String?,
      (json['platforms'] as List<dynamic>?)
          ?.map((e) => Platform.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['parentPlatforms'] as List<dynamic>?)
          ?.map((e) => Platform.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['stores'] as List<dynamic>?)
          ?.map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['esrbRating'] == null
          ? null
          : ESRBRating.fromJson(json['esrbRating'] as Map<String, dynamic>),
      (json['shortScreenshots'] as List<dynamic>)
          .map((e) => ShortScreenshots.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'released': instance.released,
      'tba': instance.tba,
      'backgroundImage': instance.backgroundImage,
      'rating': instance.rating,
      'ratingTop': instance.ratingTop,
      'ratings': instance.ratings,
      'ratingsCount': instance.ratingsCount,
      'reviewsTextCount': instance.reviewsTextCount,
      'added': instance.added,
      'addedByStatus': instance.addedByStatus,
      'metacritic': instance.metacritic,
      'playtime': instance.playtime,
      'suggestionsCount': instance.suggestionsCount,
      'updated': instance.updated,
      'reviewsCount': instance.reviewsCount,
      'saturatedColor': instance.saturatedColor,
      'dominantColor': instance.dominantColor,
      'platforms': instance.platforms,
      'parentPlatforms': instance.parentPlatforms,
      'genres': instance.genres,
      'stores': instance.stores,
      'tags': instance.tags,
      'esrbRating': instance.esrbRating,
      'shortScreenshots': instance.shortScreenshots,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      json['id'] as int?,
      json['title'] as String?,
      json['count'] as int?,
      (json['percent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'count': instance.count,
      'percent': instance.percent,
    };

AddedByStatus _$AddedByStatusFromJson(Map<String, dynamic> json) =>
    AddedByStatus(
      json['yet'] as int?,
      json['owned'] as int?,
      json['beaten'] as int?,
      json['toplay'] as int?,
      json['dropped'] as int?,
      json['playing'] as int?,
    );

Map<String, dynamic> _$AddedByStatusToJson(AddedByStatus instance) =>
    <String, dynamic>{
      'yet': instance.yet,
      'owned': instance.owned,
      'beaten': instance.beaten,
      'toplay': instance.toplay,
      'dropped': instance.dropped,
      'playing': instance.playing,
    };

Platform _$PlatformFromJson(Map<String, dynamic> json) => Platform(
      json['platform'] == null
          ? null
          : PlatformDetail.fromJson(json['platform'] as Map<String, dynamic>),
      json['releasedAt'] as String?,
      json['requirementsEn'] == null
          ? null
          : Requirements.fromJson(
              json['requirementsEn'] as Map<String, dynamic>),
      json['requirementsRu'] == null
          ? null
          : Requirements.fromJson(
              json['requirementsRu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformToJson(Platform instance) => <String, dynamic>{
      'platform': instance.platform,
      'releasedAt': instance.releasedAt,
      'requirementsEn': instance.requirementsEn,
      'requirementsRu': instance.requirementsRu,
    };

PlatformDetail _$PlatformDetailFromJson(Map<String, dynamic> json) =>
    PlatformDetail(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
      json['image'] as String?,
      json['yearEnd'] as int?,
      json['yearStart'] as int?,
      json['gamesCount'] as int?,
      json['imageBackground'] as String?,
    );

Map<String, dynamic> _$PlatformDetailToJson(PlatformDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'yearEnd': instance.yearEnd,
      'yearStart': instance.yearStart,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };

Requirements _$RequirementsFromJson(Map<String, dynamic> json) => Requirements(
      json['minimum'] as String?,
      json['recommended'] as String?,
    );

Map<String, dynamic> _$RequirementsToJson(Requirements instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'recommended': instance.recommended,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      json['id'] as String?,
      json['name'] as String?,
      json['slug'] as String?,
      json['gamesCount'] as int?,
      json['imageBackground'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      json['id'] as int?,
      json['store'] == null
          ? null
          : StoreDetail.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'id': instance.id,
      'store': instance.store,
    };

StoreDetail _$StoreDetailFromJson(Map<String, dynamic> json) => StoreDetail(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
      json['domain'] as String?,
      json['gamesCount'] as int?,
      json['imageBackground'] as String?,
    );

Map<String, dynamic> _$StoreDetailToJson(StoreDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'domain': instance.domain,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
      json['language'] as String?,
      json['gamesCount'] as int?,
      json['imageBackground'] as String?,
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'language': instance.language,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };

ESRBRating _$ESRBRatingFromJson(Map<String, dynamic> json) => ESRBRating(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$ESRBRatingToJson(ESRBRating instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

ShortScreenshots _$ShortScreenshotsFromJson(Map<String, dynamic> json) =>
    ShortScreenshots(
      json['id'] as int?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ShortScreenshotsToJson(ShortScreenshots instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
