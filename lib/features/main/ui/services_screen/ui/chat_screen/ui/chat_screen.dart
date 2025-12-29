import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';

import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';

import '../widgets/card_chat.dart';





class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, this.textController,});

  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfile(
        image: AppImageKeys.notification,
        title: ' ',
        showDefaultProfileImage: true,
        //onBack: () => context.read<ServiceCenterDetailsCubit>().goBack(context),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [

          CardChat(),

                const Spacer(),
                TextFormFieldWidget(
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20),
                  isColumn: false,
                  textFormController:
                  textController ?? TextEditingController(),
                  textSize: 14,
                  textColor: AppColors.darkGreyColor,
                  fillColor: AppColors.whiteColor,
                  prefixIcon: AppImageKeys.send,
                  hintText: AppLanguageKeys.writeHere,
                  suffixIcon: Icons.sentiment_satisfied_alt,
                  fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                  isValidator: true,
                ),
              ]

          ),
        ),
      ),
    );
  }
}

