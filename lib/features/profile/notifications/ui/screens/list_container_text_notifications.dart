import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/qr_code/ui/qr_code.dart';
import '../../../../../features/profile/my_address/ui/my_address.dart';
import '../../../../../features/profile/privacy_policy/ui/privacy_policy.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/profile/custom_widget/list_container_text_notifications_widget.dart';
import '../../../../../features/profile/personal_data/ui/personal_data.dart';
import '../../../../../core/theming/assets.dart';

class ListContainerTextNotifications extends StatelessWidget {
  const ListContainerTextNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        ListContainerTextNotificationsWidget(
            secondText:  AppLanguageKeys.carAuction,
            firstText:  AppLanguageKeys.newMessage,
            imagePath: AppImageKeys.new_message,
            endTitle: '2 يناير - 6:00 م',
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(PrivacyPolicy()),
              );
            },
        ),
        ListContainerTextNotificationsWidget(
          secondText:  AppLanguageKeys.order255Expired,
          firstText:  AppLanguageKeys.mobileMaintenance,
          imagePath: AppImageKeys.mobile_maintenance,
          endTitle: '2 يناير - 6:00 م',
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(PersonalData()),
            );
          },
        ),
        ListContainerTextNotificationsWidget(
          secondText:  AppLanguageKeys.onTheWay,
          firstText:  AppLanguageKeys.spareParts,
          imagePath: AppImageKeys.spare_parts,
          endTitle: '2 يناير - 6:00 م',
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(MyAddress()),
            );
          },
        ),ListContainerTextNotificationsWidget(
          secondText:  AppLanguageKeys.carAuction,
          firstText:  AppLanguageKeys.newMessage,
          imagePath: AppImageKeys.new_message,
          endTitle: '2 يناير - 6:00 م',
          onTap: (){

            Navigator.of(context).push(
              NavigateToPageWidget(QrCode()),
            );
          },
        ),
      ],
    );
  }
}
