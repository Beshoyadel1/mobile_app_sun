import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/AppDataList.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../welcome/widgets/appbar_profile.dart';
import '../../../logic/order_cubit/order_cubit.dart';
import '../../../logic/order_cubit/order_state.dart';
import '../../../models/order_model.dart';
import '../widgets/order_card.dart';
import '../widgets/order_details_widget.dart';
import '../widgets/orders_list_widget.dart';
import '../../main_screen.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrdersCubit(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {

          return Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarProfile(
              image: AppImageKeys.notification,
              showDefaultProfileImage: true,
              title: AppLanguageKeys.myOrders,
              showBackButton: false,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: SizedBox(
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    OrdersListWidget(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
