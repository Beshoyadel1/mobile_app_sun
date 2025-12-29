import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/check_your_national_access_account/logic/container_check_your_national_state.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/your_insurance_information.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/check_your_national_access_account/logic/container_check_your_national_cubit.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/screens/container_number.dart';
import '../../../../../features/Insurance/check_your_national_access_account/ui/screens/label_text_form_field_container_check_your_national_access_account.dart';

class ContainerContentPartChange extends StatefulWidget {
  const ContainerContentPartChange({super.key});

  @override
  State<ContainerContentPartChange> createState() => _ContainerContentPartChangeState();
}

class _ContainerContentPartChangeState extends State<ContainerContentPartChange> {
  late ContainerCheckYourNationalCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<ContainerCheckYourNationalCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContainerCheckYourNationalCubit, ContainerCheckYourNationalState>(
      buildWhen: (previous, current) =>
      current is ContainerInitialState ||
          current is ContainerReplacedState ||
          current is ContainerNavigatedState,
       builder: (context, state) {
        if (state is ContainerNavigatedState) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await Navigator.of(context).push(
              NavigateToPageWidget(YourInsuranceInformation()),
            );
            cubit.goToReplaced();
          });
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            if (state is ContainerInitialState)
              LabelTextFormFieldContainerCheckYourNationalAccessAccount()
            else if (state is ContainerReplacedState)
              ContainerNumber(),
            ButtonWidget(
              widthContainer: 500,
              text: AppLanguageKeys.verifyAbsher,
              textColor: AppColors.whiteColor,
              buttonColor: AppColors.cyanColor,
              textSize: 13,
              borderRadius: 30,
              onTap: () {
                context.read<ContainerCheckYourNationalCubit>().onButtonPressed();
              },
            ),
          ],
        );
      },
    );
  }
}
