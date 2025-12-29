import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/request_service/mobile_service_in_service_request/ui/mobile_service_in_service_request.dart';

class LastButtonWithBackGround extends StatelessWidget {

  const LastButtonWithBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(15),
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: ButtonWidget(
      text: AppLanguageKeys.payment,
      textColor: AppColors.darkColor,
      buttonColor: AppColors.whiteColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer: 300,
      borderRadius: 30,
      onTap: () {
          Navigator.of(context).push(
            NavigateToPageWidget(MobileServiceInServiceRequest()),
          );
      }
      ),
    );
  }
}
