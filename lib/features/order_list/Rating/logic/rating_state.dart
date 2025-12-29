
class RatingState {
  final double rating;
  final String comment;

  RatingState({this.rating = 0, this.comment = ""});

  RatingState copyWith({double? rating, String? comment}) {
    return RatingState(
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
    );
  }
}

