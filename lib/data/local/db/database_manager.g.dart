// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_manager.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Meal extends DataClass implements Insertable<Meal> {
  final String idMeal;
  final String strMeal;
  final String strMealThumb;
  final bool isFavorite;
  Meal(
      {required this.idMeal,
      required this.strMeal,
      required this.strMealThumb,
      required this.isFavorite});
  factory Meal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Meal(
      idMeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_meal'])!,
      strMeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_meal'])!,
      strMealThumb: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_meal_thumb'])!,
      isFavorite: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_favorite'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_meal'] = Variable<String>(idMeal);
    map['str_meal'] = Variable<String>(strMeal);
    map['str_meal_thumb'] = Variable<String>(strMealThumb);
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  MealsCompanion toCompanion(bool nullToAbsent) {
    return MealsCompanion(
      idMeal: Value(idMeal),
      strMeal: Value(strMeal),
      strMealThumb: Value(strMealThumb),
      isFavorite: Value(isFavorite),
    );
  }

  factory Meal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Meal(
      idMeal: serializer.fromJson<String>(json['idMeal']),
      strMeal: serializer.fromJson<String>(json['strMeal']),
      strMealThumb: serializer.fromJson<String>(json['strMealThumb']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idMeal': serializer.toJson<String>(idMeal),
      'strMeal': serializer.toJson<String>(strMeal),
      'strMealThumb': serializer.toJson<String>(strMealThumb),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  Meal copyWith(
          {String? idMeal,
          String? strMeal,
          String? strMealThumb,
          bool? isFavorite}) =>
      Meal(
        idMeal: idMeal ?? this.idMeal,
        strMeal: strMeal ?? this.strMeal,
        strMealThumb: strMealThumb ?? this.strMealThumb,
        isFavorite: isFavorite ?? this.isFavorite,
      );
  @override
  String toString() {
    return (StringBuffer('Meal(')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idMeal, strMeal, strMealThumb, isFavorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Meal &&
          other.idMeal == this.idMeal &&
          other.strMeal == this.strMeal &&
          other.strMealThumb == this.strMealThumb &&
          other.isFavorite == this.isFavorite);
}

class MealsCompanion extends UpdateCompanion<Meal> {
  final Value<String> idMeal;
  final Value<String> strMeal;
  final Value<String> strMealThumb;
  final Value<bool> isFavorite;
  const MealsCompanion({
    this.idMeal = const Value.absent(),
    this.strMeal = const Value.absent(),
    this.strMealThumb = const Value.absent(),
    this.isFavorite = const Value.absent(),
  });
  MealsCompanion.insert({
    required String idMeal,
    required String strMeal,
    required String strMealThumb,
    required bool isFavorite,
  })  : idMeal = Value(idMeal),
        strMeal = Value(strMeal),
        strMealThumb = Value(strMealThumb),
        isFavorite = Value(isFavorite);
  static Insertable<Meal> custom({
    Expression<String>? idMeal,
    Expression<String>? strMeal,
    Expression<String>? strMealThumb,
    Expression<bool>? isFavorite,
  }) {
    return RawValuesInsertable({
      if (idMeal != null) 'id_meal': idMeal,
      if (strMeal != null) 'str_meal': strMeal,
      if (strMealThumb != null) 'str_meal_thumb': strMealThumb,
      if (isFavorite != null) 'is_favorite': isFavorite,
    });
  }

  MealsCompanion copyWith(
      {Value<String>? idMeal,
      Value<String>? strMeal,
      Value<String>? strMealThumb,
      Value<bool>? isFavorite}) {
    return MealsCompanion(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (strMeal.present) {
      map['str_meal'] = Variable<String>(strMeal.value);
    }
    if (strMealThumb.present) {
      map['str_meal_thumb'] = Variable<String>(strMealThumb.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealsCompanion(')
          ..write('idMeal: $idMeal, ')
          ..write('strMeal: $strMeal, ')
          ..write('strMealThumb: $strMealThumb, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }
}

class $MealsTable extends Meals with TableInfo<$MealsTable, Meal> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MealsTable(this._db, [this._alias]);
  final VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  late final GeneratedColumn<String?> idMeal = GeneratedColumn<String?>(
      'id_meal', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMealMeta = const VerificationMeta('strMeal');
  late final GeneratedColumn<String?> strMeal = GeneratedColumn<String?>(
      'str_meal', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _strMealThumbMeta =
      const VerificationMeta('strMealThumb');
  late final GeneratedColumn<String?> strMealThumb = GeneratedColumn<String?>(
      'str_meal_thumb', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _isFavoriteMeta = const VerificationMeta('isFavorite');
  late final GeneratedColumn<bool?> isFavorite = GeneratedColumn<bool?>(
      'is_favorite', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_favorite IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns =>
      [idMeal, strMeal, strMealThumb, isFavorite];
  @override
  String get aliasedName => _alias ?? 'meals';
  @override
  String get actualTableName => 'meals';
  @override
  VerificationContext validateIntegrity(Insertable<Meal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal']!, _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('str_meal')) {
      context.handle(_strMealMeta,
          strMeal.isAcceptableOrUnknown(data['str_meal']!, _strMealMeta));
    } else if (isInserting) {
      context.missing(_strMealMeta);
    }
    if (data.containsKey('str_meal_thumb')) {
      context.handle(
          _strMealThumbMeta,
          strMealThumb.isAcceptableOrUnknown(
              data['str_meal_thumb']!, _strMealThumbMeta));
    } else if (isInserting) {
      context.missing(_strMealThumbMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    } else if (isInserting) {
      context.missing(_isFavoriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idMeal};
  @override
  Meal map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Meal.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MealsTable createAlias(String alias) {
    return $MealsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MealsTable meals = $MealsTable(this);
  late final MealDao mealDao = MealDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [meals];
}
