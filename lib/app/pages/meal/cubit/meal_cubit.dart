import 'package:bloc/bloc.dart';

import 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit() : super(MealState());
}
