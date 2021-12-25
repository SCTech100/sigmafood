import 'dart:convert';

class MealResponse {
  int? page;
  int? totalResults;
  int? totalPages;
  List<MealModel>? mealList;

  MealResponse(
      {this.page,
      this.totalResults,
      this.totalPages,
      this.mealList = const []});

  MealResponse.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      List list = json['meals'];
      List<MealModel> newList = [];
      list.forEach((v) {
        newList.add(MealModel.fromMap(v));
      });
      mealList = newList;
    }
  }
}

class MealModel {
  String? idMeal;
  String? strMeal;
  String? strMealThumb;
  MealModel({
    this.idMeal,
    this.strMeal,
    this.strMealThumb,
  });

  MealModel copyWith({
    String? idMeal,
    String? strMeal,
    String? strMealThumb,
  }) {
    return MealModel(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strMealThumb: strMealThumb ?? this.strMealThumb,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idMeal': idMeal,
      'strMeal': strMeal,
      'strMealThumb': strMealThumb,
    };
  }

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      idMeal: map['idMeal'],
      strMeal: map['strMeal'],
      strMealThumb: map['strMealThumb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MealModel.fromJson(String source) =>
      MealModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'MealModel(idMeal: $idMeal, strMeal: $strMeal, strMealThumb: $strMealThumb)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MealModel &&
        other.idMeal == idMeal &&
        other.strMeal == strMeal &&
        other.strMealThumb == strMealThumb;
  }

  @override
  int get hashCode =>
      idMeal.hashCode ^ strMeal.hashCode ^ strMealThumb.hashCode;
}
