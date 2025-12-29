import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/app_cubit/app_cubit.dart';
import '../../../core/app_cubit/app_states.dart';
import '../../../core/constants.dart';
import '../../../core/language/language_constant.dart';
import '../../../core/setup_git_it.dart';
import '../../../core/theming/assets.dart';
import '../../../core/theming/colors.dart';
import '../../order_list/first_page_order_list/ui/first_page_order_list.dart';
import '../../request_service/first_page_in_service_request/ui/first_page_in_service_request.dart';
import '../models/bottom_nav_model.dart';
import 'home_screen/ui/home_screen.dart';
import 'home_screen/ui/profile_screen.dart';
import 'map_screen/ui/delivery_location_screeen.dart';
import 'my_orders_screen/ui/my_orders_screen.dart';
import 'services_screen/ui/services_screen/ui/services_screen.dart';


class MainScreen extends StatefulWidget {

  const MainScreen({super.key,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<BottomNavModel> itemsData = [
    BottomNavModel(icon: AppImageKeys.home, label: AppLanguageKeys.home),
    BottomNavModel(icon: AppImageKeys.orders, label: AppLanguageKeys.myOrders),
    BottomNavModel(icon: AppImageKeys.map, label: AppLanguageKeys.map),
    BottomNavModel(icon: AppImageKeys.orderService, label: AppLanguageKeys.requestService),
    BottomNavModel(icon: AppConstants.isIndividual?AppImageKeys.settings:AppImageKeys.profileCircle, label: AppConstants.isIndividual?AppLanguageKeys.services:"حسابي"),
  ];

  @override
  void initState() {
    print('dksfjosfjosdfksdf');
    super.initState();
    _appCubit.currentIndex = 0;
  }

  List<Widget> get _screens =>
      [
        const HomeScreen(),
        const FirstPageOrderList(),// MyOrdersScreen(),
        const DeliveryLocationScreen(),
        AppConstants.isIndividual? const FirstPageInServiceRequest(): const ServicesScreen(),
        AppConstants.isIndividual?  const ServicesScreen():const ProfileScreen(),
      ];

  final AppCubit _appCubit = getIt<AppCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      buildWhen: (previous, current) => current is ChangeCurrentIndexState,
      builder: (context, AppStates state) {
        return Scaffold(
          body: _screens[_appCubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.whiteColor,
            currentIndex: _appCubit.currentIndex,
            onTap: (index) {
              _appCubit.changeIndex(index);
            },
            selectedItemColor: AppColors.orangeColor,
            unselectedItemColor: Colors.grey,
            items: buildBottomItems(context, itemsData),
          ),
        );
      },
    );
  }
}


