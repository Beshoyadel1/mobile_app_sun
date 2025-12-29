import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/insurance_new/identity_verification_new/identity_verification_new.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/logic/container_check_your_national_new_cubit.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/logic/container_check_your_national_new_state.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/ui/screens/container_number_new.dart';
import '../../../../../features/insurance_new/check_your_national_access_account_new/ui/screens/label_text_form_field_container_check_your_national_access_account_new.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

class ContainerContentPartChangeNew extends StatefulWidget {
  const ContainerContentPartChangeNew({super.key});

  @override
  State<ContainerContentPartChangeNew> createState() => _ContainerContentPartChangeState();
}

class _ContainerContentPartChangeState extends State<ContainerContentPartChangeNew> {
  late ContainerCheckYourNationalNewCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<ContainerCheckYourNationalNewCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContainerCheckYourNationalNewCubit, ContainerCheckYourNationalNewState>(
      buildWhen: (previous, current) =>
      current is ContainerInitialState ||
          current is ContainerReplacedState ||
          current is ContainerNavigatedState,
       builder: (context, state) {
        if (state is ContainerNavigatedState) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await Navigator.of(context).push(
              NavigateToPageWidget(IdentityVerificationNew()),
            );
            cubit.goToReplaced();
          });
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            if (state is ContainerInitialState)
              LabelTextFormFieldContainerCheckYourNationalAccessAccountNew()
            else if (state is ContainerReplacedState)
              ContainerNumberNew(),
            ButtonWidget(
              widthContainer: 500,
              text: AppLanguageKeys.verifyAbsher,
              textColor: AppColors.whiteColor,
              buttonColor: AppColors.cyanColor,
              textSize: 13,
              borderRadius: 30,
              onTap: () {
                context.read<ContainerCheckYourNationalNewCubit>().onButtonPressed();
              },
            ),
          ],
        );
      },
    );
  }
}
