import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/request_service/chat_in_service_request/ui/screens/message/Design_Text_feild.dart';
import '../../../../../features/request_service/chat_in_service_request/ui/screens/message/chat_list_design.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';


class ChatInServiceRequest  extends StatelessWidget {
  const ChatInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(
        title: '',
        color: Colors.transparent,
      ),
      body: Column(
        children: [
          ChatListDesign(),
          DesignTextField(),
        ],
      ),
    );
  }
}
