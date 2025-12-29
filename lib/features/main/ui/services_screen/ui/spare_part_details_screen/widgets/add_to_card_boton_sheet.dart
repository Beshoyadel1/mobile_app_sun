import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../welcome/widgets/botton_sheet.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../../../../models/services_center_model.dart';
import '../../services_payment_screen/ui/services_payment_screen.dart';

class AddToCardBotonSheet extends StatelessWidget {
  const AddToCardBotonSheet({super.key, required this.center});
  final ServiceCenter center;

  @override
  Widget build(BuildContext context) {
    return   Align(
      alignment: Alignment.bottomCenter,
      child: BottonSheet(
        containerColor: AppColors.whiteColor,
        buttonWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            spacing: 10,
            children: [
              ButtonWidget(
                iconData: Icons.local_grocery_store_outlined,
                heightContainer: 60,
                widthContainer: 187,
                borderRadius: 50,
                buttonColor: AppColors.orangeColor,
                text:AppLanguageKeys.addToCart,
                textSize: 18,
                textColor: AppColors.whiteColor,
                onTap: () {
                  Navigator.of(context).push(
                    NavigateToPageWidget(
                      BlocProvider(
                        create: (context) => getIt<ServiceCenterDetailsCubit>(),
                        child: ServicesPaymentScreen(center: center),
                      ),
                    ),
                  );

                },
              ),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.orangeColor,
                child: Icon(Icons.add,color: AppColors.whiteColor,),
              ),
              TextInAppWidget(
                text: '1',
                textSize: 24,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.darkColor,
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.orangeColor,
                child: Icon(Icons.remove,color: AppColors.whiteColor,),
              )

            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
