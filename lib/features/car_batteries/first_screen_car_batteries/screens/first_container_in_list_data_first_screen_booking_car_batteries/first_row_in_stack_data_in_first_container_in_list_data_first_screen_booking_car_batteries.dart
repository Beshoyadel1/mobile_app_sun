import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/logic/icon_color_cubit.dart';
import '../../../../../core/theming/colors.dart';

class FirstRowInStackDataInFirstContainerInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const FirstRowInStackDataInFirstContainerInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.whiteColor,
            child: BlocProvider(
              create: (_) => IconColorCubit(),
              child: BlocBuilder<IconColorCubit, bool>(
                builder: (context, isFavorite) {
                  return IconButton(
                    onPressed: () {
                      context.read<IconColorCubit>().toggleColor();
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? AppColors.redColor : AppColors.greyColor,
                      size: 20,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
