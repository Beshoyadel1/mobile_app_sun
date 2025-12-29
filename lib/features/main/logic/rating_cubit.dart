import 'package:flutter_bloc/flutter_bloc.dart';

class RatingCubit extends Cubit<int> {
  RatingCubit() : super(0);

  void updateRating(int rating) {
    emit(rating);
  }
}
