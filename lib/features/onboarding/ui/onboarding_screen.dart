import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/language/language.dart';
import '../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../core/theming/colors.dart';
import '../../auth/login/ui/login_screen.dart';
import '../logic/onboarding_cubit.dart';
import '../logic/onboarding_state.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/onboarding_list.dart';
import 'widgets/onboarding_stack_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          final cubit = context.read<OnboardingCubit>();
          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            extendBodyBehindAppBar: true,
            appBar: AppbarWidget(),
            body: OnboardingStackWidget(
              onboardingList: onboardingList,
              currentPage: state.currentPage,
              controller: controller,
              onPageChanged: (index) => cubit.setPage(index),
              onNext: () => cubit.nextPage(onboardingList.length),
            ),
          );
        },
      ),
    );
  }
}
