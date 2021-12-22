import 'dart:convert';

class MealCategoryResponse {
  int? page;
  int? totalResults;
  int? totalPages;
  List<MealCategory>? mealCategoryList;

  MealCategoryResponse(
      {this.page,
      this.totalResults,
      this.totalPages,
      this.mealCategoryList = const []});

  MealCategoryResponse.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      List<MealCategory> mealCategoryList = [];
      json['categories'].forEach((v) {
        mealCategoryList.add(MealCategory.fromMap(v));
      });
    }
  }
}

class MealCategory {
  String? idCategory;
  String? strCategory;
  String? strCategoryDescription;
  String? strCategoryThumb;
  MealCategory({
    this.idCategory,
    this.strCategory,
    this.strCategoryDescription,
    this.strCategoryThumb,
  });

  Map<String, dynamic> toMap() {
    return {
      'idCategory': idCategory,
      'strCategory': strCategory,
      'strCategoryDescription': strCategoryDescription,
      'strCategoryThumb': strCategoryThumb,
    };
  }

  factory MealCategory.fromMap(Map<String, dynamic> map) {
    return MealCategory(
      idCategory: map['idCategory'],
      strCategory: map['strCategory'],
      strCategoryDescription: map['strCategoryDescription'],
      strCategoryThumb: map['strCategoryThumb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MealCategory.fromJson(String source) =>
      MealCategory.fromMap(json.decode(source));
}
