// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'features/bookmark_feature/domain/entities/bookmarks.dart';
import 'features/home_feature/domain/entities/home_entity/creator_entity.dart';
import 'features/home_feature/domain/entities/home_entity/news_entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6236657037543739591),
      name: 'Bookmarks',
      lastPropertyId: const IdUid(2, 6092407334764722919),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8417831439332682993),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6092407334764722919),
            name: 'name',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'news', srcEntity: 'NewsEntity', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(7, 5594225138108022625),
      name: 'NewsEntity',
      lastPropertyId: const IdUid(11, 7751936382838075506),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4007447624373037644),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 3874893387154646051),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7818907606116470380),
            name: 'coverImage',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5719513308517103121),
            name: 'readTime',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1015367588126171491),
            name: 'viewsCount',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5166479923325259100),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 3340437213869934406),
            name: 'isTrending',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 1832845643948775232),
            name: 'creatorId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 8625531752221711285),
            name: 'createdAt',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 2829202174313748711),
            name: 'commentCounts',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 7751936382838075506),
            name: 'creatorRelationId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 688628656768422124),
            relationTarget: 'CreatorEntity')
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(3, 5888085178471399297),
            name: 'bookmarks',
            targetId: const IdUid(1, 6236657037543739591))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(10, 6269190140227142296),
      name: 'CreatorEntity',
      lastPropertyId: const IdUid(5, 1286398653284896562),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4098548567250146585),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 7509022576170717001),
            name: 'profileImage',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8134046605400692560),
            name: 'fullName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6848563509794303843),
            name: 'bio',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1286398653284896562),
            name: 'followersCount',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(10, 6269190140227142296),
      lastIndexId: const IdUid(2, 688628656768422124),
      lastRelationId: const IdUid(3, 5888085178471399297),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [
        4456243254405832064,
        8895463230068155344,
        5291968145718636224,
        2929067535719986525,
        8724383587132796422,
        8183232629151391394,
        3892881030023271958
      ],
      retiredIndexUids: const [914147925854620943],
      retiredPropertyUids: const [
        2784314912135814628,
        2246319026970883246,
        3730522183390313766,
        2107350317751179918,
        140060849766033673,
        9054476685961476211,
        2376280198302656052,
        1879296524201222977,
        8353112718955025884,
        7236307782846539812,
        1338976512084429932,
        81535385424372585,
        5770667437373890803,
        5571503543519209282,
        4187342199314593174,
        2927707283162367196,
        641868144858764159,
        7537037287463890017,
        466852785210736839,
        6302165127934423555,
        4864181599928489138,
        5809729985769092437,
        2856075956047516091,
        1997713988970136966,
        8294201143032230254,
        5822342129487192098,
        2960264808895272244,
        5070653747626136794,
        7375596467252344090,
        38858442499552175,
        5322999395423708940,
        4078403067873776960,
        8032018733268580755,
        8959110569498732854,
        7831179436995069807,
        8334149366692912940,
        7719507269481247262,
        2339305215287083444,
        6532260335512149109,
        8880379220376692205,
        2895935320997175191,
        8110391464864149845,
        2688323394457640687,
        8412868703219729039,
        3848532250309727151,
        4409270534878480677,
        8460004712417592549,
        2963693499817766387,
        5861873023564087749,
        6564838998894894408,
        7485496661680469522,
        7752845677793736627,
        7866168557877642340,
        63863830978515204,
        7760333652372518441
      ],
      retiredRelationUids: const [4005392264867980145],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Bookmarks: EntityDefinition<Bookmarks>(
        model: _entities[0],
        toOneRelations: (Bookmarks object) => [],
        toManyRelations: (Bookmarks object) =>
            {RelInfo<NewsEntity>.toManyBacklink(3, object.id!): object.news},
        getId: (Bookmarks object) => object.id,
        setId: (Bookmarks object, int id) {
          object.id = id;
        },
        objectToFB: (Bookmarks object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(3);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, nameOffset);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final object = Bookmarks(id: idParam, name: nameParam);
          InternalToManyAccess.setRelInfo<Bookmarks>(object.news, store,
              RelInfo<NewsEntity>.toManyBacklink(3, object.id!));
          return object;
        }),
    NewsEntity: EntityDefinition<NewsEntity>(
        model: _entities[1],
        toOneRelations: (NewsEntity object) => [object.creatorRelation],
        toManyRelations: (NewsEntity object) =>
            {RelInfo<NewsEntity>.toMany(3, object.id): object.bookmarks},
        getId: (NewsEntity object) => object.id,
        setId: (NewsEntity object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field NewsEntity.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (NewsEntity object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          final coverImageOffset = object.coverImage == null
              ? null
              : fbb.writeString(object.coverImage!);
          final readTimeOffset = fbb.writeString(object.readTime);
          final viewsCountOffset = fbb.writeString(object.viewsCount);
          final descriptionOffset = object.description == null
              ? null
              : fbb.writeString(object.description!);
          final createdAtOffset = fbb.writeString(object.createdAt);
          final commentCountsOffset = fbb.writeString(object.commentCounts);
          fbb.startTable(12);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addOffset(2, coverImageOffset);
          fbb.addOffset(3, readTimeOffset);
          fbb.addOffset(4, viewsCountOffset);
          fbb.addOffset(5, descriptionOffset);
          fbb.addBool(6, object.isTrending);
          fbb.addInt64(7, object.creatorId);
          fbb.addOffset(8, createdAtOffset);
          fbb.addOffset(9, commentCountsOffset);
          fbb.addInt64(10, object.creatorRelation.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final coverImageParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 8);
          final readTimeParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final viewsCountParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 12, '');
          final descriptionParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14);
          final isTrendingParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 16, false);
          final creatorIdParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 18, 0);
          final createdAtParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 20, '');
          final commentCountsParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 22, '');
          final bookmarksParam = ToMany<Bookmarks>();
          final creatorRelationParam = ToOne<CreatorEntity>(
              targetId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 24, 0));
          final object = NewsEntity(
              id: idParam,
              title: titleParam,
              coverImage: coverImageParam,
              readTime: readTimeParam,
              viewsCount: viewsCountParam,
              description: descriptionParam,
              isTrending: isTrendingParam,
              creatorId: creatorIdParam,
              createdAt: createdAtParam,
              commentCounts: commentCountsParam,
              bookmarks: bookmarksParam,
              creatorRelation: creatorRelationParam);
          object.creatorRelation.attach(store);
          InternalToManyAccess.setRelInfo<NewsEntity>(object.bookmarks, store,
              RelInfo<NewsEntity>.toMany(3, object.id));
          return object;
        }),
    CreatorEntity: EntityDefinition<CreatorEntity>(
        model: _entities[2],
        toOneRelations: (CreatorEntity object) => [],
        toManyRelations: (CreatorEntity object) => {},
        getId: (CreatorEntity object) => object.id,
        setId: (CreatorEntity object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field CreatorEntity.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (CreatorEntity object, fb.Builder fbb) {
          final profileImageOffset = object.profileImage == null
              ? null
              : fbb.writeString(object.profileImage!);
          final fullNameOffset = fbb.writeString(object.fullName);
          final bioOffset = fbb.writeString(object.bio);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, profileImageOffset);
          fbb.addOffset(2, fullNameOffset);
          fbb.addOffset(3, bioOffset);
          fbb.addInt64(4, object.followersCount);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final profileImageParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6);
          final fullNameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final bioParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final followersCountParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0);
          final object = CreatorEntity(
              id: idParam,
              profileImage: profileImageParam,
              fullName: fullNameParam,
              bio: bioParam,
              followersCount: followersCountParam);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Bookmarks] entity fields to define ObjectBox queries.
class Bookmarks_ {
  /// see [Bookmarks.id]
  static final id = QueryIntegerProperty<Bookmarks>(_entities[0].properties[0]);

  /// see [Bookmarks.name]
  static final name =
      QueryStringProperty<Bookmarks>(_entities[0].properties[1]);
}

/// [NewsEntity] entity fields to define ObjectBox queries.
class NewsEntity_ {
  /// see [NewsEntity.id]
  static final id =
      QueryIntegerProperty<NewsEntity>(_entities[1].properties[0]);

  /// see [NewsEntity.title]
  static final title =
      QueryStringProperty<NewsEntity>(_entities[1].properties[1]);

  /// see [NewsEntity.coverImage]
  static final coverImage =
      QueryStringProperty<NewsEntity>(_entities[1].properties[2]);

  /// see [NewsEntity.readTime]
  static final readTime =
      QueryStringProperty<NewsEntity>(_entities[1].properties[3]);

  /// see [NewsEntity.viewsCount]
  static final viewsCount =
      QueryStringProperty<NewsEntity>(_entities[1].properties[4]);

  /// see [NewsEntity.description]
  static final description =
      QueryStringProperty<NewsEntity>(_entities[1].properties[5]);

  /// see [NewsEntity.isTrending]
  static final isTrending =
      QueryBooleanProperty<NewsEntity>(_entities[1].properties[6]);

  /// see [NewsEntity.creatorId]
  static final creatorId =
      QueryIntegerProperty<NewsEntity>(_entities[1].properties[7]);

  /// see [NewsEntity.createdAt]
  static final createdAt =
      QueryStringProperty<NewsEntity>(_entities[1].properties[8]);

  /// see [NewsEntity.commentCounts]
  static final commentCounts =
      QueryStringProperty<NewsEntity>(_entities[1].properties[9]);

  /// see [NewsEntity.creatorRelation]
  static final creatorRelation = QueryRelationToOne<NewsEntity, CreatorEntity>(
      _entities[1].properties[10]);

  /// see [NewsEntity.bookmarks]
  static final bookmarks =
      QueryRelationToMany<NewsEntity, Bookmarks>(_entities[1].relations[0]);
}

/// [CreatorEntity] entity fields to define ObjectBox queries.
class CreatorEntity_ {
  /// see [CreatorEntity.id]
  static final id =
      QueryIntegerProperty<CreatorEntity>(_entities[2].properties[0]);

  /// see [CreatorEntity.profileImage]
  static final profileImage =
      QueryStringProperty<CreatorEntity>(_entities[2].properties[1]);

  /// see [CreatorEntity.fullName]
  static final fullName =
      QueryStringProperty<CreatorEntity>(_entities[2].properties[2]);

  /// see [CreatorEntity.bio]
  static final bio =
      QueryStringProperty<CreatorEntity>(_entities[2].properties[3]);

  /// see [CreatorEntity.followersCount]
  static final followersCount =
      QueryIntegerProperty<CreatorEntity>(_entities[2].properties[4]);
}