import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/custom_container.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import '../../../../../core/AppDataList.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/general_widgets/custom_list_tile.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../logic/search_cubit/search_cubit.dart';
import '../../../logic/search_cubit/search_state.dart';
import '../../../logic/services_cubit/services_cubit.dart';

import '../widgets/List_car_auction_item.dart';
import '../widgets/campany_car_card.dart';
import '../widgets/image_slider.dart';
import '../widgets/list_car_news.dart';
import '../widgets/list_service_center.dart';
import '../widgets/spare_parts_list_demo.dart';
import '../../services_screen/ui/services_screen/widgets/types_services.dart';
import '../widgets/container_home_page_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SearchCubit(context),
        ),
        BlocProvider(
          create: (context) => LocationCubit()..getUserLocation(),
        ),
        BlocProvider(
            create: (_) => ServicesCubit())
      ],
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: Column(
            children: [
            const ContainerHomePageAppBar(),
        Expanded(
          child: BlocBuilder<SearchCubit, SearchState>(
            buildWhen: (previous, current) =>
            current is SearchLoaded ||
                current is SearchEmpty ||
                current is SearchInitial,
            builder: (context, state) {
              return ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(height: 40),
                  state is SearchLoaded
                      ? Column(
                    children: state.results.map((r) {
                      return CustomListTile(
                        leading: Image.asset(r.image!, width: 55, height: 55),
                        title: TextInAppWidget(
                          text: r.title,
                          fontWeightIndex:
                          FontSelectionData.regularFontFamily,
                          textSize: 12,
                          textColor: AppColors.darkColor,
                        ),
                        subtitle: TextInAppWidget(
                          text: r.category,
                          fontWeightIndex:
                          FontSelectionData.regularFontFamily,
                          textSize: 10,
                          textColor: AppColors.greyColor,
                        ),
                        containerColor: AppColors.whiteColor,
                      );
                    }).toList(),
                  )
                      : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(child: ImageSlider()),
                      const SizedBox(height: 30),
                      AppConstants.isIndividual?const SizedBox(): CompanyCarCard(),

                      Center(
                        child: TypesServices(
                          onTypeSelected: (index) {
                            context.read<ServicesCubit>().selectTypeService(index);
                          }, services: AppData.specificServicesHomePage(context),
                        ),
                      ),
                      const ListServiceCenter(),
                      const SparePartsList(),
                      const ListCarAuctionItem(),
                      const ListCarNews(),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ])),
    );
  }
}


