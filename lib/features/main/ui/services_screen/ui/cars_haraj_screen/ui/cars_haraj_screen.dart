import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/AppDataList.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../welcome/widgets/appbar_profile.dart';
import '../../../../../../welcome/widgets/car_name_list.dart';
import '../../../../../../welcome/widgets/car_name_listview.dart';
import '../../../../../logic/category_cubit.dart';
import '../widgets/car_list.dart';
import '../widgets/tabs_list.dart';
import '../widgets/view_auction_list.dart';
import 'add_car_screen.dart';


class CarsHarajScreen extends StatelessWidget {
  CarsHarajScreen({super.key});
  final cars = AppData.cars;

  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (_) => CategoryCubit(),
      child: Scaffold(
        appBar: AppbarProfile(
          image: AppImageKeys.notification,
          title: AppLanguageKeys.carAuction,
          showDefaultProfileImage: true,

        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TabsList(),
                const SizedBox(height: 20),

                CustomCardCar(heightSizeBox: 88, typeModel: CarNameList, heightContainer: 88, widthContainer: 88, heightImage: 30, widthImage: 34, selectedCarName: '', scrollDirection: Axis.horizontal,),
                const SizedBox(height: 62),
                BlocBuilder<CategoryCubit, int>(
                  builder: (context, selected) {
                    if (selected == 0) {
                      return CarList();
                    } else if (selected == 1) {
                      return  ViewAuctionList();
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: SizedBox(
          height: 88,
          width: 88,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: AppColors.orangeColor,
            onPressed: () {
              Navigator.of(context).push(
                  NavigateToPageWidget(AddCarScreen()));
            },
            child: Image.asset(AppImageKeys.addCarIcon, height: 49, width: 49,),
          ),
        ),
      ),
    );
  }
}






