import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/custom_container.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/setup_git_it.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../chat_screen/ui/chat_screen.dart';
import 'call_delivery.dart';

class DeliveryCommunication extends StatelessWidget {
  final bool showTitle;
  final String? title;

  const DeliveryCommunication({
    super.key,
    this.showTitle = true,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      containerColor: AppColors.whiteColor,
      isSelected: false,
      onTap: () {},
      borderRadius: BorderRadius.circular(14),
      border: Border(),
      typeWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            if (showTitle)
              TextInAppWidget(
                text: title ?? AppLanguageKeys.contactRepresentative,
                textSize: 14,
                textColor: AppColors.darkColor,
                fontWeightIndex: FontSelectionData.regularFontFamily,
              ),
            Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage(AppImageKeys.profileImage),
                ),
                TextInAppWidget(
                  text:AppLanguageKeys.maintenanceRepresentative,
                  textSize: 14,
                  textColor: AppColors.darkColor,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                ),
                const Spacer(),

                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) {
                        return CallPersonWidget();
                      },
                    );
                  },
                  child: Image.asset(AppImageKeys.deliveryCallIcon, height: 56, width: 56,),
                ),

                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      NavigateToPageWidget(
                        BlocProvider(
                          create: (context) => getIt<ServiceCenterDetailsCubit>(),
                          child: const ChatScreen(),
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    AppImageKeys.deliveryMessageIcon,
                    height: 56,
                    width: 56,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
