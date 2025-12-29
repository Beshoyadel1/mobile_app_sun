import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';

class SelectVisa extends StatelessWidget {
  const SelectVisa({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(AppImageKeys.visa),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
