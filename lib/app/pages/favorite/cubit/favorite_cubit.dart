import 'package:bloc/bloc.dart';

import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteState());

  Future<void> initView() async {
    try {
      fetchDataFavorite();
    } catch (e) {}
  }

  Future<void> fetchDataFavorite() async {
    try {} catch (e) {}
  }
}
