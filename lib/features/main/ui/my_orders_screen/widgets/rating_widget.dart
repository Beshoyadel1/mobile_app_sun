import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/rating_cubit.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    this.iconSize ,
    this.activeColor = Colors.orange,
    this.inactiveColor = Colors.grey,
    this.maxStars,
    this.mainAxisAlignment ,
  });

  final double? iconSize;
  final Color activeColor;
  final Color inactiveColor;
  final int? maxStars;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingCubit, int>(
      builder: (context, rating) {
        return  Row(


            children: List.generate(maxStars ?? 5, (index) {
              final starIndex = index + 1;
              return  GestureDetector(
                onTap: () {
                  context.read<RatingCubit>().updateRating(starIndex);
                },
                child: Icon(
                  Icons.star,
                  color: starIndex <= rating ? activeColor : inactiveColor,
                  size: iconSize,
                ),
              );

            }),

        );
      },
    );
  }
}
