import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/change_tires/first_screen_change_tires/screens/list_data_first_screen_change_tires.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class FirstScreenChangeTires extends StatelessWidget {
  const FirstScreenChangeTires({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'أسم المركز',),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment:AlignmentDirectional.center,
            child: SizedBox(
              width: 350,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataFirstScreenChangeTires()
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
