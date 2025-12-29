import 'package:flutter/material.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../features/warranty/custom_widget/height_cubit.dart';
import '../../../../core/theming/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


Future<T?> showCustomBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  double? height,
}) {
  return showModalBottomSheet<T>(
    context: context,
    backgroundColor: AppColors.scaffoldColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    builder: (context) {
      return BlocProvider(
        create: (_) => HeightCubit(height ?? 200),
        child: BlocBuilder<HeightCubit, double>(
          builder: (context, height) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: height,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                child: Navigator(
                  onGenerateRoute: (settings) {
                    return NavigateToPageWidget(child);
                  },
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
