import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/car_batteries/first_screen_car_batteries/first_screen_car_batteries.dart';
import 'package:sun_system_app/features/change_the_glass/first_screen_change_the_glass/first_screen_change_the_glass.dart';
import 'package:sun_system_app/features/main/models/profile_item_model.dart';

import '../features/Insurance/insurance_offers/ui/insurance_offers.dart';
import '../features/change_car/my_car_data_car_change/ui/my_car_data_car_change.dart';
import '../features/main/models/car_auction_item_model.dart';
import '../features/main/models/order_model.dart';
import '../features/main/models/services_and_news_car_model.dart';
import '../features/main/models/services_center_model.dart';
import '../features/main/models/spare_part_model.dart';
import '../features/main/models/specific_service_model.dart';
import '../features/profile/credit_cards/ui/credit_cards.dart';
import '../features/profile/financial_transactions/ui/financial_transactions.dart';
import '../features/profile/maintenance_reports/ui/screens/maintenance_reports_screen.dart';
import '../features/profile/my_address/ui/my_address.dart';
import '../features/profile/notifications/ui/notifications.dart';
import '../features/profile/personal_data/ui/personal_data.dart';
import '../features/profile/privacy_policy/ui/privacy_policy.dart';
import '../features/profile/qr_code/ui/qr_code.dart';
import '../features/wallet_bonus_send_code_to_friend/wallet_for_wallet_bonus_send_code_to_friend/ui/wallet_for_wallet_bonus_send_code_to_friend.dart';
import '../features/warranty/warranty_first/ui/warranty_first.dart';
import '../features/welcome/models/service_model.dart';
import 'constants.dart';
import 'language/language_constant.dart';

class AppData {

  static  List<SpecificServiceModel> specificServicesHomePage (BuildContext context){ return [

    SpecificServiceModel(
      image: AppImageKeys.maintenanceServices, title: 'تأمين السيارة',
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              InsuranceOffers()),
        );
      },
    ),
    SpecificServiceModel(
      image: AppImageKeys.steeringWheel,
      title: 'ضمان صن',
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              WarrantyFirst()),
        );
      },
    ),
    SpecificServiceModel(
      image: AppImageKeys.changeOilsService,
      title: 'تغيير زيوت',
      onTap: () {

      },
    ),
    SpecificServiceModel(
      image: AppImageKeys.tireChangeServices, title: 'تغيير الاطارات', onTap: (){},
    ),
    SpecificServiceModel(
      image: AppImageKeys.washingCleaningService, title: 'غسيل ونظافة - تغيير زيوت', onTap: (){},
    ),
    SpecificServiceModel(
      title: 'طلب سطحة',
      image: AppImageKeys.requestCar, onTap: (){},
    ),
    SpecificServiceModel(
      image: AppImageKeys.batteriesService,
      title: 'بطاريات',
      onTap: (){
      Navigator.of(context).push(
        NavigateToPageWidget(
            FirstScreenCarBatteries()
        ),
      );
    },
    ),
    SpecificServiceModel(
      image: AppImageKeys.transferMain, title: 'صيانة متنقلة', onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.periodicExaminationIcon, title: 'الفحص الدوري',onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.sparePartsService, title:  AppLanguageKeys.sparePartsService, onTap: (){},
    ),   SpecificServiceModel(

      image: AppImageKeys.periodicMaintenance, title: 'صيانة دورية',onTap: (){},
    ),   SpecificServiceModel(

      image: AppImageKeys.servicesWay, title:'خدمة الطريق',onTap: (){}
    ),   SpecificServiceModel(

      image: AppImageKeys.glassService, title: 'زجاج',onTap: (){
      Navigator.of(context).push(
        NavigateToPageWidget(
            FirstScreenChangeTheGlass()
        ),
      );
    }
    ),

  ];}

  static  List<SpecificServiceModel> specificServicesPage (BuildContext context){ return [
    SpecificServiceModel(
      image: AppImageKeys.maintenanceServices, title: 'الصيانة والاصلاح',
      onTap: () {

      },
    ),

    SpecificServiceModel(
      image: AppImageKeys.changeOilsService, title: 'تغيير زيوت', onTap: (){},
    ),

    SpecificServiceModel(

      image: AppImageKeys.tireChangeServices, title: 'تغيير الاطارات', onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.washingCleaningService, title: 'غسيل ونظافة - تغيير زيوت', onTap: (){},
    ),
    SpecificServiceModel(
      title: 'طلب سطحة',
      image: AppImageKeys.requestCar, onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.batteriesService, title: 'بطاريات', onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.transferMain, title: 'صيانة متنقلة', onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.periodicExaminationIcon, title: 'الفحص الدوري',onTap: (){},
    ),
    SpecificServiceModel(

      image: AppImageKeys.sparePartsService, title:  AppLanguageKeys.sparePartsService, onTap: (){},
    ),   SpecificServiceModel(

      image: AppImageKeys.periodicMaintenance, title: 'صيانة دورية',onTap: (){},
    ),   SpecificServiceModel(

        image: AppImageKeys.servicesWay, title:'خدمة الطريق',onTap: (){}
    ),   SpecificServiceModel(

        image: AppImageKeys.glassService, title: 'زجاج',onTap: (){

    }
    ),

  ];}

  static final List<ServiceModel> services = [
    ServiceModel(
      AppLanguageKeys.repairAndMaintenance,
      image: AppImageKeys.maintenanceServices,
    ),
    ServiceModel(
      AppLanguageKeys.oilChange,
      image: AppImageKeys.changeOilsService,
    ),

    ServiceModel(
      'طلب نجم',
      image: AppImageKeys.fenderBenderIcon,
    ),
    ServiceModel(
      AppLanguageKeys.carInsurance,
      image: AppImageKeys.carInsuranceService,
    ),
    ServiceModel(
      AppLanguageKeys.carMarket,
      image: AppImageKeys.carHarajService,
    ),
    ServiceModel(
      AppLanguageKeys.periodicMaintenance,
      image: AppImageKeys.regularMaintenanceService,
    ),
    ServiceModel(
      AppLanguageKeys.sparePartsService,
      image: AppImageKeys.sparePartsService,
    ),
    ServiceModel(
      AppLanguageKeys.carWarranty,
      image: AppImageKeys.steeringWheel,
    ),
    ServiceModel(AppLanguageKeys.glass, image: AppImageKeys.glassService),
    ServiceModel(
      AppLanguageKeys.tireChange,
      image: AppImageKeys.tireChangeServices,
    ),
    ServiceModel(
      AppLanguageKeys.batteries,
      image: AppImageKeys.batteriesService,
    ),
   ServiceModel(
      AppLanguageKeys.roadAssistance,
      image: AppImageKeys.roadsideAssistanceService,
   ),
  ];

  static final List<ServicesAndNewsCarModel> carServiceCenterData = [
    ServicesAndNewsCarModel(
      image: AppImageKeys.serviceCenters1,
      title: AppLanguageKeys.maintenanceCenter1,
      description: AppLanguageKeys.maintenanceDesc1,
    ),
    ServicesAndNewsCarModel(
      image: AppImageKeys.serviceCenters2,
      title: AppLanguageKeys.maintenanceCenter2,
      description: AppLanguageKeys.maintenanceDesc2,
    ),
    ServicesAndNewsCarModel(
      image: AppImageKeys.serviceCenters1,
      title: AppLanguageKeys.maintenanceCenter1,
      description: AppLanguageKeys.maintenanceDesc1,
    ),
    ServicesAndNewsCarModel(
      image: AppImageKeys.serviceCenters2,
      title: AppLanguageKeys.maintenanceCenter2,
      description: AppLanguageKeys.maintenanceDesc2,
    ),
  ];

  static final spareParts = [
    SparePartModel(
      image: AppImageKeys.spareParts1,
      partName: AppLanguageKeys.tires,
      description: AppLanguageKeys.speed900,
      price: AppLanguageKeys.price450,
      isNew: true,
    ),
    SparePartModel(
      image: AppImageKeys.spareParts1,
      partName: AppLanguageKeys.tires,
      description: AppLanguageKeys.speed900,
      price: AppLanguageKeys.price450,
      isNew: true,
    ),
    SparePartModel(
      image: AppImageKeys.spareParts3,
      partName:AppLanguageKeys.accessories,
      description: AppLanguageKeys.speed900,
      price: AppLanguageKeys.price450,
    ),
    SparePartModel(
      image: AppImageKeys.spareParts4,
      partName:AppLanguageKeys.accessories,
      description: AppLanguageKeys.speed900,
      price: AppLanguageKeys.price450,
    ),
    SparePartModel(
      image: AppImageKeys.spareParts5,
      partName: AppLanguageKeys.oils,
      description: AppLanguageKeys.speed900,
      price: AppLanguageKeys.price450,
    ),
    SparePartModel(
      image: AppImageKeys.spareParts6,
      partName: AppLanguageKeys.oils,
      description: AppLanguageKeys.speed900,
      price: AppLanguageKeys.price450,
    ),
  ];

  static final List<CarAuctionItemModel> cars = [
    CarAuctionItemModel(
      image: AppImageKeys.newsCar3,

      description: AppLanguageKeys.carDesc,
      price: AppLanguageKeys.price80k,
      location: AppLanguageKeys.riyadh,

    ),
    CarAuctionItemModel(
      image: AppImageKeys.newsCar1,
      description: AppLanguageKeys.carDesc,
      price: AppLanguageKeys.price80k,
      location: AppLanguageKeys.jeddah,
    ),
    CarAuctionItemModel(
      image: AppImageKeys.newsCar2,
      description:AppLanguageKeys.speed900,
      price: AppLanguageKeys.price80k,
      location: AppLanguageKeys.riyadh,
    ),
    CarAuctionItemModel(
      image: AppImageKeys.newsCar4,
      description: "Luxury SUV",
      price: "120,000 SAR",
      location: AppLanguageKeys.riyadh,
    ),
  ];

  static final List<ServicesAndNewsCarModel> carNewsData = [
    ServicesAndNewsCarModel(
      image: AppImageKeys.newsCar4,
      topText: AppLanguageKeys.june2025,
      title: AppLanguageKeys.testDrive,
      description: AppLanguageKeys.hyundaiDesc,
    ),
    ServicesAndNewsCarModel(
      image: AppImageKeys.newsCar2,
      topText: AppLanguageKeys.june2025,
      title:  AppLanguageKeys.carOffers,
      description:  AppLanguageKeys.kiaDesc,
    ),
    ServicesAndNewsCarModel(
      image: AppImageKeys.newsCar3,
      topText:  AppLanguageKeys.august2025,
      title:  AppLanguageKeys.latestCars,
      description: AppLanguageKeys.kiaDesc,
    ),
    ServicesAndNewsCarModel(
      image: AppImageKeys.newsCar4,
      topText:  AppLanguageKeys.august2025,
      title:  AppLanguageKeys.latestCars,
      description: AppLanguageKeys.kiaDesc,
    ),
  ];




  //Profile item
  static  List<ProfileItemModel> profileItems(BuildContext context){ return [
 ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),
        child: Image.asset(AppImageKeys.carDataIcon, height: 23, width: 23),
      ),
      title: TextInAppWidget(
        text:AppConstants.isIndividual?AppLanguageKeys.myCarData:"سيارات العمل",
        textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              MyCarDataCarChange()),
        );
      },

    ),
    ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),

        child: Image.asset(
          AppImageKeys.personalDataIcon,
          height: 17,
          width: 17,
        ),
      ),
      title: const TextInAppWidget(
        text: AppLanguageKeys.personalData,
        textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,
      ),

      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              PersonalData()),
        );
      },
    ),
  if(AppConstants.isIndividual)  ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),

        child: Image.asset(AppImageKeys.myAddressIcon, height: 17, width: 17),
      ),
      title: const TextInAppWidget(
        text: AppLanguageKeys.myAddress,
        textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,
      ),

      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              MyAddress()),
        );
      },
    ),
    if(AppConstants.isIndividual)  ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),

        child: Image.asset(
          AppImageKeys.servicesFavoriteIcon,
          height: 17,
          width: 17,
        ),
      ),
      title: const TextInAppWidget(
        text: AppLanguageKeys.favoriteServices,
        textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,
      ),

      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),
    if(AppConstants.isIndividual)  ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),

        child: Image.asset(AppImageKeys.messageIcon, height: 17, width: 17),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TextInAppWidget(
            text: AppLanguageKeys.harajMessages,
            textSize: 14,
            textColor: AppColors.darkColor,
            fontWeightIndex: FontSelectionData.regularFontFamily,
          ),
          CircleAvatar(
            radius: 11,
            backgroundColor: AppColors.orangeColor,
            child: TextInAppWidget(
              text: '1',
              textColor: AppColors.whiteColor,
              textSize: 14,
            ),
          ),
        ],
      ),

      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),

      ProfileItemModel(
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),

          child: Image.asset(
            AppImageKeys.file,
            height: 17,
            width: 17,
          ),
        ),
        title: const TextInAppWidget(
          text: AppLanguageKeys.maintenanceReports,
          textSize: 14,
          textColor: AppColors.darkColor,
          fontWeightIndex: FontSelectionData.regularFontFamily,
        ),
        containerColor: AppColors.whiteColor,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.of(context).push(
            NavigateToPageWidget(
                MaintenanceReportsScreen()),
          );
        },
      ),
      ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.CircleLightorangeColor.withAlpha(100),

        child: Image.asset(
          AppImageKeys.notificationOrangeIcon,
          height: 17,
          width: 17,
        ),
      ),
      title: const TextInAppWidget(
        text: AppLanguageKeys.notifications,
        textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              Notifications()),
        );
      },
    ),





    ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.lightBlueColor.withAlpha(100),

        child: Image.asset(AppImageKeys.qrCodeIcon, height: 17, width: 17),
      ),
      title: const TextInAppWidget(text: AppLanguageKeys.myQrCode ,   textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              QrCode()),
        );
      },
    ),
    if(AppConstants.isIndividual)  ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.lightBlueColor.withAlpha(100),

        child: Image.asset(
          AppImageKeys.personalDataIcon,
          height: 17,
          width: 17,
          color: AppColors.seaBlueColor,
        ),
      ),
      title: const  TextInAppWidget(text: AppLanguageKeys.bankCards ,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              CreditCards()),
        );
      },
    ),
    if(AppConstants.isIndividual)  ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.lightBlueColor.withAlpha(100),

        child: Image.asset(AppImageKeys.transactionIcon, height: 17, width: 17),
      ),
      title: const  TextInAppWidget(text: AppLanguageKeys.transactions ,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              FinancialTransactions()),
        );
      },
    ),
    if(AppConstants.isIndividual) ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.lightBlueColor.withAlpha(100),

        child: Image.asset(AppImageKeys.walletIcon, height: 17, width: 17),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const  TextInAppWidget(text: AppLanguageKeys.wallet ,   textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,), const TextInAppWidget(text: AppLanguageKeys.walletBalance ,   textSize: 14,
          textColor: AppColors.darkColor,
          fontWeightIndex: FontSelectionData.regularFontFamily,)],
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              WalletForWalletBonusSendCodeToFriend()),
        );
      },

    ),
    if(AppConstants.isIndividual) ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.lightBlueColor.withAlpha(100),

        child: Image.asset(AppImageKeys.pointsIcon, height: 17, width: 17),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const  TextInAppWidget(text: AppLanguageKeys.points ,   textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,), const TextInAppWidget(text: AppLanguageKeys.pointsBalance,   textSize: 14,
          textColor: AppColors.darkColor,
          fontWeightIndex: FontSelectionData.regularFontFamily,)],
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),
    ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.veryLightGreyColor.withAlpha(100),

        child: Image.asset(
          AppImageKeys.settingProfileIcon,
          height: 17,
          width: 17,
        ),
      ),
      title: const  TextInAppWidget(text: AppLanguageKeys.settings,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),

if(!AppConstants.isIndividual)
    ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.veryLightGreyColor.withAlpha(100),

        child: Image.asset(AppImageKeys.messageIcon, height: 17, width: 17,color: AppColors.darkColor ,),
      ),
      title:  const TextInAppWidget(
        text: AppLanguageKeys.contactManagement,
        textSize: 14,
        textColor: AppColors.darkColor,
        fontWeightIndex: FontSelectionData.regularFontFamily,
      ),

      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),
    ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.veryLightGreyColor.withAlpha(100),

        child: Image.asset(AppImageKeys.questionIcon, height: 17, width: 17),
      ),
      title:  TextInAppWidget(text: AppConstants.isIndividual?AppLanguageKeys.faq:AppLanguageKeys.technicalSupport,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),
    if(AppConstants.isIndividual) ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.veryLightGreyColor.withAlpha(100),

        child: Image.asset(AppImageKeys.userRatingIcon, height: 17, width: 17),
      ),
      title: const  TextInAppWidget(text: AppLanguageKeys.userRating ,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
      onTap: () {
        Navigator.of(context).push(
          NavigateToPageWidget(
              PrivacyPolicy()),
        );
      },
    ),
    if(AppConstants.isIndividual) ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.veryLightGreyColor.withAlpha(100),

        child: Image.asset(AppImageKeys.sendFriendIcon, height: 17, width: 17),
      ),
      title: const  TextInAppWidget(text: AppLanguageKeys.sendToFriend ,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),
    if(AppConstants.isIndividual) ProfileItemModel(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.lightRedColor.withAlpha(100),

        child: Image.asset(AppImageKeys.logoutIcon, height: 17, width: 17),
      ),
      title: const  TextInAppWidget(text: AppLanguageKeys.logout ,   textSize: 14,
  textColor: AppColors.darkColor,
  fontWeightIndex: FontSelectionData.regularFontFamily,),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      containerColor: AppColors.whiteColor,
    ),
   ];}



  // my orders list

 static final List<OrderModel> orders = [
    OrderModel(
      image: AppImageKeys.regularMaintenanceService,
      title: AppLanguageKeys.repair,
      centerName: AppLanguageKeys.centerName,
      orderCode: "#656556",
      price: AppLanguageKeys.pointsBalance,
      status: AppLanguageKeys.newOrder,
      date: "1:00pm - 1/1/2025",
      statusColor: AppColors.orangeColor,
    ),
    OrderModel(
      image: AppImageKeys.serviceCenters2,
      title: AppLanguageKeys.sparePartsTitle,
      centerName: AppLanguageKeys.tiresTitle,
      orderCode: "#987321",
      price: AppLanguageKeys.price150,
      status: AppLanguageKeys.received,
      date: "10:30am - 2/1/2025",
      statusColor: AppColors.seaBlueColor,
    ),
    OrderModel(
      image: AppImageKeys.serviceCenters2,
      title: AppLanguageKeys.oilChange,
      centerName: AppLanguageKeys.centerName,
      orderCode: "#444222",
      price:  AppLanguageKeys.price300,
      status:  AppLanguageKeys.onTheWay,
      date: "5:00pm - 3/1/2025",
      statusColor: AppColors.orangeColor,
    ),
   OrderModel(
     image: AppImageKeys.regularMaintenanceService,
     title:  AppLanguageKeys.maintenanceAndRepair,
     centerName:  AppLanguageKeys.centerName,
     orderCode: "#656556",
     price:  AppLanguageKeys.price200,
     status:  AppLanguageKeys.newOrder,
     date: "1:00pm - 1/1/2025",
     statusColor: AppColors.orangeColor,
   ),
   OrderModel(
     image: AppImageKeys.serviceCenters2,
     title:  AppLanguageKeys.tiresTitle,
     centerName:  AppLanguageKeys.tiresTitle,
     orderCode: "#987321",
     price:  AppLanguageKeys.price150,
     status:  AppLanguageKeys.received,
     date: "10:30am - 2/1/2025",
     statusColor: AppColors.seaBlueColor,
   ),
   OrderModel(
     image: AppImageKeys.serviceCenters2,
     title:  AppLanguageKeys.oilChange,
     centerName:  AppLanguageKeys.centerName,
     orderCode: "#444222",
     price:  AppLanguageKeys.price300,
     status:  AppLanguageKeys.onTheWay,
     date: "5:00pm - 3/1/2025",
     statusColor: AppColors.orangeColor,
   ),
  ];




 static final List<ServiceCenter> serviceCenters = [
    ServiceCenter(
      image: AppImageKeys.serviceCenters1,
      id: 0,
      name:  'اصلاح وصيانة - تغيير زيوت',
      description:  AppLanguageKeys.repairAndOil,
      distance:  AppLanguageKeys.oneKm,
      clock:  AppLanguageKeys.time48h,
      delivery:  AppLanguageKeys.mobile,
      rating: "4.7",
    ),
    ServiceCenter(
      image: AppImageKeys.serviceCenters1,
      id: 1,
      name:  'غسيل ونظافة - تغيير زيوت',
      description:  AppLanguageKeys.cleaningService,
      distance:  AppLanguageKeys.twoKm,
      clock:  AppLanguageKeys.time24h,
      delivery:  AppLanguageKeys.fixed,
      rating: "4.9",
    ),
   ServiceCenter(
     image: AppImageKeys.serviceCenters1,
     id: 2,
     name:  'الصيانة المتنقلة',
     description:  AppLanguageKeys.cleaningService,
     distance:  AppLanguageKeys.twoKm,
     clock:  AppLanguageKeys.time24h,
     delivery:  AppLanguageKeys.fixed,
     rating: "4.9",
   ),
   ServiceCenter(
     image: AppImageKeys.serviceCenters1,
     id: 3,
     name: 'مساعدة الطريق',
     description:  AppLanguageKeys.cleaningService,
     distance:  AppLanguageKeys.twoKm,
     clock:  AppLanguageKeys.time24h,
     delivery:  AppLanguageKeys.fixed,
     rating: "4.9",
   ),
   ServiceCenter(
     image: AppImageKeys.serviceCenters1,
     id: 4,
     name: 'طلب سطحة',
     description:  AppLanguageKeys.cleaningService,
     distance:  AppLanguageKeys.twoKm,
     clock:  AppLanguageKeys.time24h,
     delivery:  AppLanguageKeys.fixed,
     rating: "4.9",
   ),
   ServiceCenter(
     image: AppImageKeys.batteriesService,
     id: 5,
     name: 'بطاريات',
     description:  AppLanguageKeys.cleaningService,
     distance:  AppLanguageKeys.twoKm,
     clock:  AppLanguageKeys.time24h,
     delivery:  AppLanguageKeys.fixed,
     rating: "4.9",

   ),



 ];

}
