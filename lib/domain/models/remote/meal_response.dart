import 'dart:convert';

class MealResponse {
  int? page;
  int? totalResults;
  int? totalPages;
  List<Meal>? mealList;

  MealResponse(
      {this.page,
      this.totalResults,
      this.totalPages,
      this.mealList = const []});

  MealResponse.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      mealList = [];
      json['meals'].forEach((v) {
        mealList!.add(Meal.fromMap(v));
      });
    }
  }
}

class Meal {
  String? idMeal;
  String? strMeal;
  String? strMealThumb;
  Meal({
    this.idMeal,
    this.strMeal,
    this.strMealThumb,
  });

  Meal copyWith({
    String? idMeal,
    String? strMeal,
    String? strMealThumb,
  }) {
    return Meal(
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

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      idMeal: map['idMeal'],
      strMeal: map['strMeal'],
      strMealThumb: map['strMealThumb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Meal.fromJson(String source) => Meal.fromMap(json.decode(source));

  @override
  String toString() =>
      'Meal(idMeal: $idMeal, strMeal: $strMeal, strMealThumb: $strMealThumb)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Meal &&
        other.idMeal == idMeal &&
        other.strMeal == strMeal &&
        other.strMealThumb == strMealThumb;
  }

  @override
  int get hashCode =>
      idMeal.hashCode ^ strMeal.hashCode ^ strMealThumb.hashCode;
}
