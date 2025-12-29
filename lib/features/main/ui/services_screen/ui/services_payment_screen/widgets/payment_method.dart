import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart' show CustomContainer;
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/services_cubit/services_cubit.dart';
import '../../../../../logic/services_cubit/services_state.dart';
import '../../../../../models/payment_method.dart';



class PaymentMethods extends StatefulWidget {
 const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<PaymentMethod> methods = [
    PaymentMethod(name: AppLanguageKeys.visa, icon: AppImageKeys.visaIcon),
    PaymentMethod(icon: AppImageKeys.madaIcon),
    PaymentMethod(icon: AppImageKeys.payIcon),
    PaymentMethod(icon: AppImageKeys.tmaraIcon),
    PaymentMethod(icon: AppImageKeys.tabbyIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => getIt<ServicesCubit>(),
  child: CustomContainer(
    isSelected: false,
      onTap: () {},
      borderRadius: BorderRadius.circular(14),
      border: Border(),
      typeWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            const TextInAppWidget(text: AppLanguageKeys.paymentMethod, textSize: 14, textColor: AppColors.darkColor, fontWeightIndex: FontSelectionData.regularFontFamily,),

            BlocBuilder<ServicesCubit, ServicesState>(
              builder: (context, state) {
                final cubit = context.read<ServicesCubit>();
                final selectedIndex = cubit.selectedPaymentIndex;

                return Column(
                  children: List.generate(methods.length, (index) {
                    final method = methods[index];
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        context.read<ServicesCubit>().selectPaymentMethod(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: isSelected ? AppColors.orangeColor : AppColors.lightGreyColor,
                                  width: 2,
                                ),
                                color: isSelected ? AppColors.orangeColor : Colors.transparent,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Image.asset(method.icon, height: 26),
                            const SizedBox(width: 10),
                            TextInAppWidget(
                              text: method.name ?? "",
                              textSize: 15,
                              textColor: AppColors.darkColor,
                              fontWeightIndex: FontSelectionData.regularFontFamily,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    ),
);
  }
}
