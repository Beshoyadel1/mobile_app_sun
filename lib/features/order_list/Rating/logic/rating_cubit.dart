import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/order_list/Rating/logic/rating_state.dart';

class RatingCubit extends Cubit<RatingState> {
  RatingCubit() : super(RatingState());

  void updateRating(double rating) {
    emit(state.copyWith(rating: rating));
  }

  void updateComment(String comment) {
    emit(state.copyWith(comment: comment));
  }

  void submit() {
    print("Rating: ${state.rating}, Comment: ${state.comment}");
  }
}
