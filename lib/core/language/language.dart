import 'package:flutter/material.dart';

import 'language_constant.dart';

List<Locale> supportedLocales = [
  const Locale('ar', 'SA'),
  const Locale('en', 'US'),
];

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static final Map<String, Map<String, String>> _localizedValues = {
    'ar': {
      AppLanguageKeys.startNow:'أبدء الأن',
      AppLanguageKeys.yourCarIsSafeWithSan:'سيارتك بأمان مع صان',
      AppLanguageKeys.maintenanceAndRepairServices:'خدمات الصيانة والاصلاح',
      AppLanguageKeys.emergencyService:'خدمة الطوارئ',
      AppLanguageKeys.buyingAndSellingCars:'بيع وشراء سيارات',
      AppLanguageKeys.listYourCarInASafeAndReliableAuctionWithSan:'اعرض سيارتك في مزاد آمن وموثوق مع صان ',
      AppLanguageKeys.highwayAssistance:'المساعدة علي الطريق السريعة  على مدار الساعة اينما كنت ',
      AppLanguageKeys.weSendYouProfessional:' نرسل لك فنيين محترفين يشخصون المشكلة ويصلحونها.',
      AppLanguageKeys.integratedSolutions:'حلول متكاملة من الضمان والتأمين لجميع الخدمات في مكان واحد',
      AppLanguageKeys.login:'تسجيل الدخول ',
      AppLanguageKeys.loginAsAnIndividualOrCompany:'قم بتسجيل الدخول كأفراد او شركات',
      AppLanguageKeys.registerAsAnIndividual:'تسجيل كأفراد',
      AppLanguageKeys.registerAsCompanies:'تسجيل كشركات',
      AppLanguageKeys.orRegisterVia:'أو تسجيل عبر',
      AppLanguageKeys.appleAccount:'حساب أبل',
      AppLanguageKeys.googleAccount:'جوجل',
      AppLanguageKeys.noAccount:'ليس لديك حساب',
      AppLanguageKeys.registerHere:'تسجيل هنا',
      AppLanguageKeys.pleaseEnterYourPhoneNumberAndPassword :'برجاء ادخال رقم الهاتف وكلمة المرور',
      AppLanguageKeys.phoneNumber:'رقم الهاتف',
      AppLanguageKeys.password:'كلمة المرور',
      AppLanguageKeys.forgotPassword :'نسيت كلمة المرور',
     AppLanguageKeys.redeemFromHere :"استرد من هنا",
     AppLanguageKeys.loginAsAGuestUser :'دخول كضيف مستخدم',
      AppLanguageKeys.userName:'أسم المستخدم',
      AppLanguageKeys.email:'الايميل',
      AppLanguageKeys.resetPassword:'إعادة كلمة المرور',
      AppLanguageKeys.createAnAccount:'إنشاء حساب',
      AppLanguageKeys.accountInformation:'برجاء ادخال بيانات الحساب وكلمة المرور',
      AppLanguageKeys.createAnAccountInTheNameOfACompany:'انشاء حساب باسم شركة',
      AppLanguageKeys.confirmPin :'تأكيد الرقم السري',
      AppLanguageKeys.pleaseEnterThePinSentToYourPhoneNumber:'برجاء ادخال رقم السري التي تم ارسالها عل رقم الهاتف',
      AppLanguageKeys.iDidNotReceiveAMessage :'لم اتلقي رسالة',
      AppLanguageKeys.resend:'إعادة ارسال',
      AppLanguageKeys.yourCarData   :'بيانات سيارتك',
      AppLanguageKeys.toViewYourCarsModelsServicesAndCenters :'لاستعراض خدمات ومراكز الموديل سيارتك',
      AppLanguageKeys.chooseTheCategory :'أختر الفئة ',
      AppLanguageKeys.modelYear :'سنة الموديل',
      AppLanguageKeys.yourCarName :'أسم سيارتك',
      AppLanguageKeys.exampleModelName :'(مثال سيارتي الهوندا - سيارة زوجتي )',
      AppLanguageKeys.chooseYourCarModel: 'أختر موديل سيارتك',
      AppLanguageKeys.youCanSearchToSelectYourCarCategory: 'يمكنك البحث لاختيار فئة سيارتك',
      AppLanguageKeys.profile: 'الملف الشخصي',
      AppLanguageKeys.skipLater: 'تخطي لاحقا',
      AppLanguageKeys.next: 'التالي',
      AppLanguageKeys.locationServiceDisabled: "خدمة الموقع غير مفعلة",
      AppLanguageKeys.locationNotFound: "المكان غير موجود",
      AppLanguageKeys.yourLocation: 'موقعك الجغرافي',
      AppLanguageKeys.nearbyServices: 'لاستعراض خدمات قريبة منك',
      AppLanguageKeys.maintenanceAndRepair: 'خدمات الصيانة والاصلاح',
      AppLanguageKeys.oilChange: 'تغيير الزيوت',
      AppLanguageKeys.highways: 'الطرق السريعة',
      AppLanguageKeys.carElectricity: 'كهرباء سيارات',
      AppLanguageKeys.spareParts: 'قطع الغيار',
      AppLanguageKeys.mobileMaintenance: 'صيانة متنقلة',
      AppLanguageKeys.carAuction: 'حراج سيارات',
      AppLanguageKeys.transportService: "خدمة النقل",
      AppLanguageKeys.favoriteServices: 'الخدمات المفضلة',
      AppLanguageKeys.selectFavoriteServices: 'يمكنك تحديد الخدمات المفضلة لدينا',
      AppLanguageKeys.chooseFavoriteServices: 'أختر الخدمات المفضلة',
      AppLanguageKeys.congratulations: 'مبروووووك, لقد حصلت علي',
      AppLanguageKeys.gift: 'هدية',
      AppLanguageKeys.sunWarranty: 'ضمان صن',
      AppLanguageKeys.fiveYearsWarranty: 'لمدة 5 سنوات هدية',
      AppLanguageKeys.showServicesNow: 'عرض الخدمات الأن',
      AppLanguageKeys.sunWarrantyFeatures: 'مميزات ضمان صن',
      AppLanguageKeys.warrantyCenters: 'الاستفادة من ضمان الخدمات عبر مراكزنا المتعمدة',
      AppLanguageKeys.carWarrantyAuction: 'ضمان السيارات من بيع وشراء في حراج السيارات',
      AppLanguageKeys.freeMaintenance: 'تقديم خدمات صيانة مجانية طوال فترة الضمان',
      AppLanguageKeys.home: 'الرئيسية',
      AppLanguageKeys.myOrders: 'طلباتي',
      AppLanguageKeys.map: 'الخريطة',
      AppLanguageKeys.requestService: 'أطلب خدمة',
      AppLanguageKeys.services: 'الخدمات',
      AppLanguageKeys.searchPlaceholder: 'إبحث عن اي خدمة او اسم مركز او أي شئ',
      AppLanguageKeys.tireSpareParts: "قطع غيار الاطارات",
      AppLanguageKeys.discount50: "خصومات 50%",
      AppLanguageKeys.variousServices: "خدمات متنوعة",
      AppLanguageKeys.repairAndMaintenance: "الصيانة والاصلاح",
      AppLanguageKeys.oilServices: "تغيير زيوت",
      AppLanguageKeys.cleaningAndWashing: "غسيل ونظافة",
      AppLanguageKeys.carInsurance: "تأمين السيارة",
      AppLanguageKeys.carMarket: "حراج السيارات",
      AppLanguageKeys.periodicMaintenance: "صيانة دورية",
      AppLanguageKeys.sparePartsService: "قطع غيار",
      AppLanguageKeys.carWarranty: "ضمان السيارات",
      AppLanguageKeys.glass: "زجاج",
      AppLanguageKeys.tireChange: "تغيير الاطارات",
      AppLanguageKeys.batteries: "بطاريات",
      AppLanguageKeys.roadAssistance: "مساعدة الطريق",
      AppLanguageKeys.from: "من",
      AppLanguageKeys.nearServiceCenters: "مراكز الخدمة قريبة منك",
      AppLanguageKeys.viewAll: "عرض الكل",
      AppLanguageKeys.oneKm: "1 كم",
      AppLanguageKeys.sparePartsForCar: "قطع غيار لسيارتك - ",
      AppLanguageKeys.nissanCVR: "نيسان CVR",
      AppLanguageKeys.newKey: "جديد",
      AppLanguageKeys.harajCars: "حراج سيارات",
      AppLanguageKeys.carNews: "أخبار السيارات",
      AppLanguageKeys.myAccount: "حسابي",
      AppLanguageKeys.amrMohey: "عمرو محي",
      AppLanguageKeys.myCarNissan: " سيارتي نيسانCRV",
      AppLanguageKeys.basicServices: "خدمات اساسية",
      AppLanguageKeys.premiumServices: "خدمات مميزة",
      AppLanguageKeys.searchResult: "نتيجة البحث",
      AppLanguageKeys.filter: "فلتر",
      AppLanguageKeys.sortBy: "الظهور أولاً",
      AppLanguageKeys.moreFeatures: "ميزات أخرى",
      AppLanguageKeys.warrantyStatus: "حالة الضمان",
      AppLanguageKeys.searchView: "عرض البحث",
      AppLanguageKeys.najmRequest: "طلب نجم",
      AppLanguageKeys.maintenanceCenter1: "مركز ايكو للصيانة سيارات",
      AppLanguageKeys.maintenanceDesc1: "اصلاح وصيانة - تغيير زيوت",
      AppLanguageKeys.maintenanceCenter2: "كلينك للسيارت",
      AppLanguageKeys.maintenanceDesc2: "غسيل ونظافة - قطع غيار",
      AppLanguageKeys.tires: "إطارات",
      AppLanguageKeys.speed900: "كلاديك Speed 900",
      AppLanguageKeys.price450: "450.00 ريال",
      AppLanguageKeys.accessories: "اكسسوارات",
      AppLanguageKeys.oils: "زيوت",
      AppLanguageKeys.carDesc: "كلاديك Speed 900",
      AppLanguageKeys.price80k: "80.000 ريال",
      AppLanguageKeys.riyadh: "الرياض",
      AppLanguageKeys.jeddah: "جده",
      AppLanguageKeys.june2025: "يونيو 2025",
      AppLanguageKeys.testDrive: "تجارب قيادة",
      AppLanguageKeys.hyundaiDesc: " هيونداي باليسيد 2026: رفاهية عائلية، وسعر يُربك المنافسين",
      AppLanguageKeys.carOffers: "عروض السيارات",
      AppLanguageKeys.kiaDesc: "لا تفوت عرض كيا K4 2026 خصومات على قطع الغيار",
      AppLanguageKeys.august2025: "أغسطس 2025",
      AppLanguageKeys.latestCars: "أحدث السيارات",
      AppLanguageKeys.audiDesc: "2025 Audi Q2:أسعار ومواصفات أودي كيو 2 ",
      AppLanguageKeys.myCarData: "بيانات سيارتي",
      AppLanguageKeys.personalData: "بيانات الشخصية ",
      AppLanguageKeys.myAddress: "عنواني",
      AppLanguageKeys.harajMessages: "رسائل حراج",
      AppLanguageKeys.oneNotification: "1",
      AppLanguageKeys.notifications: "الاشعارات",
      AppLanguageKeys.myQrCode: "باركود الخاص بي",
      AppLanguageKeys.bankCards: "كروت الأئتمان البنكي",
      AppLanguageKeys.transactions: "المعاملات المالية",
      AppLanguageKeys.wallet: "المحفظة",
      AppLanguageKeys.walletBalance: "200 ريال",
      AppLanguageKeys.points: "النقاط",
      AppLanguageKeys.pointsBalance: "1000 نقاط",
      AppLanguageKeys.settings: "الضبط",
      AppLanguageKeys.faq: "الاسئلة الشائعة",
      AppLanguageKeys.userRating: "سياسة الخصوصية",
      AppLanguageKeys.sendToFriend: "ارسل لصديقك",
      AppLanguageKeys.logout: "تسجيل الخروج",
      AppLanguageKeys.repair: "الإصلاح والصيانة",
      AppLanguageKeys.centerName: "أسم مركز الاصلاح",
      AppLanguageKeys.price200: "200.00 ريال",
      AppLanguageKeys.newOrder: "إنشاء طلب جديد",
      AppLanguageKeys.sparePartsTitle: "قطع غيار",
      AppLanguageKeys.tiresTitle: "إطارات",
      AppLanguageKeys.price150: "150.00 ريال",
      AppLanguageKeys.received: "تم الاستلام",
      AppLanguageKeys.price300: "300.00 ريال",
      AppLanguageKeys.onTheWay: "في الطريق اليك",
      AppLanguageKeys.gulfServiceCenter: "مركز صيانة الخليج",
      AppLanguageKeys.riyadhServiceCenter: "مركز سيارات الرياض",
      AppLanguageKeys.twoKm: "2 كم",
      AppLanguageKeys.time48h: "48 ساعة",
      AppLanguageKeys.time24h: "24 ساعة",
      AppLanguageKeys.mobile: "متنقل",
      AppLanguageKeys.fixed: "ثابت",
      AppLanguageKeys.repairAndOil: "اصلاح وصيانة - تغيير زيوت",
      AppLanguageKeys.cleaningService: "غسيل ونظافة - خدمة النقل",
      AppLanguageKeys.speedWay:"الطرق السريعة",
      AppLanguageKeys.centernName: 'أسم المركز',
      AppLanguageKeys.bookService: 'حجز الخدمة',
      AppLanguageKeys.selectNeededServices: 'أختيار الخدمات التي تحتاجها',
      AppLanguageKeys.confirmService: 'تأكيد الخدمة',
      AppLanguageKeys.writeNotes: 'أكتب ملاحظاتك او احتياجات من مزودي الخدمة',
      AppLanguageKeys.confirmBookingTime: 'تأكيد التوقيت المناسب لحجز خدماتك',
      AppLanguageKeys.selectDay: 'أختيار اليوم',
      AppLanguageKeys.selectHour: 'أختيار الساعة',
      AppLanguageKeys.bookTime: 'حجز التوقيت',
      AppLanguageKeys.confirmServiceBooking: 'تأكيد حجز الخدمة',
      AppLanguageKeys.confirmBooking: 'تأكيد الحجز',
      AppLanguageKeys.sparePartsAndProducts: 'قطع غيار ومنتجات',
      AppLanguageKeys.skipToCompleteBooking: 'تخطي لاستكمال الحجز',
      AppLanguageKeys.available2Items: 'متوفر 2 قطعة',
      AppLanguageKeys.selectSize: 'أختر المقاس المراد ',
      AppLanguageKeys.skip: 'تخطي ',
      AppLanguageKeys.addToCart: 'إضافة السلة',
      AppLanguageKeys.order: 'طلب ',
      AppLanguageKeys.products: 'المنتجات',
      AppLanguageKeys.bridgestoneTire: 'إطــــار سيارة من بريدجستون ',
      AppLanguageKeys.serviceAddress: 'عنوان الخدمة',
      AppLanguageKeys.openMap: 'فتح الخريطة ',
      AppLanguageKeys.mainServiceAddress: 'عنوان الاساسي لمركز الصيانة ',


      AppLanguageKeys.all: "الكل",
      AppLanguageKeys.internalParts: "غيار داخليا",
      AppLanguageKeys.displayAuction: "عرض المزاد",
      AppLanguageKeys.search: "إبحث",
      AppLanguageKeys.writeHere: "أكتب هنا",
      AppLanguageKeys.reviews: "التقييمات",
      AppLanguageKeys.goodServiceCenter: "مركز صيانة جيد",
      AppLanguageKeys.excellentService: "خدمة ممتازة! طلبت فحص وصيانة للمكيف، ووصل الفني خلال أقل من ساعة. التعامل راقٍ،",
      AppLanguageKeys.enterCarAddress: "ادخال عنوان سيارتك",
      AppLanguageKeys.locating: "جارٍ تحديد الموقع...",
      AppLanguageKeys.locationFailed: "تعذر تحديد الموقع",
      AppLanguageKeys.appointment: "الميعاد",
      AppLanguageKeys.edit: "تعديل",
      AppLanguageKeys.dateExample: "1 يناير",
      AppLanguageKeys.timeExample: "الثلاثاء 3:00 م",
      AppLanguageKeys.searchYourAddress: "بحث عنوانك",
      AppLanguageKeys.confirmCarLocation: "تأكيد موقع سيارتك",
      AppLanguageKeys.payment: "الدفع",
      AppLanguageKeys.orderReceived: "تم استلام الطلب",
      AppLanguageKeys.pleaseAttend: "برجاء حضور في موعد لخدمة سيارتك",
      AppLanguageKeys.orderDetails: "تفاصيل الطلب",
      AppLanguageKeys.highwayServiceCenters: "مراكز خدمة الطرق السريعة",
      AppLanguageKeys.greeting: "هلا والله ,وينك",
      AppLanguageKeys.waitingApproval: "في انتظار موافقة الطلب",
      AppLanguageKeys.orderAccepted: "تم قبول الطلب",
      AppLanguageKeys.coupon: "الكوبون",
      AppLanguageKeys.apply: "تطبيق",
      AppLanguageKeys.createNewOrder: "إنشاء طلب جديد",
      AppLanguageKeys.twoDaysAgo: "منذ يومين",
      AppLanguageKeys.repairCenterName: "أسم مركز الاصلاح",
      AppLanguageKeys.fourPm: "الساعة 4 مساءا",
      AppLanguageKeys.contactRepresentative: "التواصل مع مندوب الصيانة",
      AppLanguageKeys.maintenanceRepresentative: "مندوب الصيانة",
      AppLanguageKeys.topRated: "الأعلى تقييم",
      AppLanguageKeys.lowestPrice: "الأقل سعر",
      AppLanguageKeys.highestPrice: "الأعلى سعر",
      AppLanguageKeys.invoice: "الفاتورة",
      AppLanguageKeys.totalServices: "إجمالي الخدمات",
      AppLanguageKeys.taxes: "الضرائب",
      AppLanguageKeys.address: "العنوان",
      AppLanguageKeys.providerArrival: "وصول مزودي الخدمة",
      AppLanguageKeys.serviceEnded: "انتهاء الخدمة",
      AppLanguageKeys.dateTimeExample: "1 يناير - - 4:00 م",
      AppLanguageKeys.notRatedYet: "لم يتم تقييم بعد",
      AppLanguageKeys.rateService: "تقييم الخدمة",
      AppLanguageKeys.onlinePayment: "الدفع الالكتروني",
      AppLanguageKeys.sharedPackages: "باقات مشتركة",
      AppLanguageKeys.premiumPackage: "باقة بريميم",
      AppLanguageKeys.fullCleaning: "شامل جميع النظافة",
      AppLanguageKeys.interiorPolish: "تلميع داخلي للسيارة",
      AppLanguageKeys.packages: "الباقات",
      AppLanguageKeys.visa: "فيزا",
      AppLanguageKeys.paymentMethod: "طريقة الدفع",
      AppLanguageKeys.writeComment: "أكتب تعليق",
      AppLanguageKeys.addComment: "أضف تعليقك",
      AppLanguageKeys.showReviews: "عرض التقيمات",
      AppLanguageKeys.selectService: "تحديد الخدمة",
      AppLanguageKeys.serviceTitle: "عنوان الخدمة",
      AppLanguageKeys.electricity: "كهرباء",
      AppLanguageKeys.mechanic: "ميكانيكي",
      AppLanguageKeys.sendOrder: "إرسال الطلب",
      AppLanguageKeys.oilMaintenance: "اصلاح وصيانة - تغيير زيوت",
      AppLanguageKeys.carModel: "موديل السيارة",
      AppLanguageKeys.sharedServices: "الخدمات المشتركة",
      AppLanguageKeys.oneLiter: "لتر",
      AppLanguageKeys.twoLiters: "2 لتر",
      AppLanguageKeys.threeLiters: "3 لتر",
      AppLanguageKeys.partsAndProducts: "قطع غيار ومنتجات",
      AppLanguageKeys.allCenters: "جميع المراكز",

      AppLanguageKeys.haraj: "عرض حراج",

      AppLanguageKeys.audiA80: "أودي A80",
      AppLanguageKeys.requestAuction: "طلب مزاد",
      AppLanguageKeys.enterAuctionNumber: "ادخل رقم المزاد",
      AppLanguageKeys.minAuctionPrice: "لابد ان لا يقل عن 90000 ريال",
      AppLanguageKeys.raiseAuction: "أرفع المزاد",
      AppLanguageKeys.auctionCreatedSuccess: "تم انشاء طلب المزاد بنجاح",
      AppLanguageKeys.automatic: "أتوماتيك",
      AppLanguageKeys.gasoline: "بنزين",
      AppLanguageKeys.model2022: "2022Model",
      AppLanguageKeys.seller: "البائع",
      AppLanguageKeys.sellerName: "عمر محي",
      AppLanguageKeys.comments20: "التعليقات 20",
      AppLanguageKeys.askPrice: "كم السوم يأخي",
      AppLanguageKeys.carAddedForSale: "تم اضافة سيارتك للبيع",
      AppLanguageKeys.showCarForSale: "أعرض سيارتك للبيع في حراج",
      AppLanguageKeys.adName: "اسم للأعلان",
      AppLanguageKeys.carDescription: "وصف السيارة",
      AppLanguageKeys.attachCarImages: "إرفاق صور السيارة",
      AppLanguageKeys.call: "أتصال",
      AppLanguageKeys.sendMessage: "إرسال رسالة",
      AppLanguageKeys.salePrice: "سعر البيع",
      AppLanguageKeys.carCondition: "حالة السيارة",
      AppLanguageKeys.news: "جديد",
      AppLanguageKeys.used: "استعمال",
      AppLanguageKeys.defineCarSpecs: "تحديد موصفات السيارة",
      AppLanguageKeys.manual: "مانويل",
      AppLanguageKeys.requestTowTruck: "طلب سطحة",
      AppLanguageKeys.writeNote: "كتابة ملاحظة",
      AppLanguageKeys.setCurrentLocation: "تحديد موقعك الحالي",
      AppLanguageKeys.createServiceRequest: "إنشاء طلب خدمة",




      ////dashboard////

      AppLanguageKeys.selectCarModelByServices: 'حدد موديل السيارات بناء علي الخدمات التي ستقدمها لعملائك',
      AppLanguageKeys.multipleCarSelectionNote: 'يمكنك تحديد سيارات مختلفة في أن واحد',
      AppLanguageKeys.searchCarModel: 'يمكنك البحث لاختيار موديل السيارة',
      AppLanguageKeys.chooseCategory: 'أختر الفئة',
      AppLanguageKeys.selectModelYears: 'حدد سنوات الموديل',
      AppLanguageKeys.carCategory: 'فئة السيارات',
      AppLanguageKeys.addCarModel: 'إضافة موديل سيارة',


      AppLanguageKeys.transferCarToAnotherUser: 'نقل السيارة لمستخدم أخر',
      AppLanguageKeys.yourPassword: 'كلمة المرور الخاص بك',
      AppLanguageKeys.newUserEmailOrPhone: 'الايميل أو رقم الهاتف للمستخدم الجديد',
      AppLanguageKeys.reasonForTransfer: 'سبب لنقل الحساب',
      AppLanguageKeys.transferNotice: 'سيتم نقل جميع الصيانات والفواتير السابقة مع عدا الاوراق الشخصية او الرخصة الخاصة بك',
      AppLanguageKeys.completeTransfer: 'اتمام النقل',
      AppLanguageKeys.waitingForNewUserApproval: 'في انتظار موافقة المستخدم الجديد لنقل السيارة',
      AppLanguageKeys.carTransferredToNewOwner: 'تم نقل السيارة للمالك أخر',
      AppLanguageKeys.transferYourNewCar: 'نقل سيارتك الجديدة',

      AppLanguageKeys.allNotifications: 'جميع الإشعارات',
      AppLanguageKeys.searchFrom: 'بحث من',
      AppLanguageKeys.to: 'الي',
      AppLanguageKeys.allOrders: 'جميع الطلبات',
      AppLanguageKeys.ordersListFromServices: 'قائمة الطلبات من الخدمات',
      AppLanguageKeys.newOrders: 'الطلبات الجديدة',
      AppLanguageKeys.completedOrders: 'الطلبات المنتهية',


      AppLanguageKeys.confirm: 'تأكيد',
      AppLanguageKeys.cancel: 'إلغاء',

      AppLanguageKeys.confirmLogout: 'هل تريد تأكيد الخروج؟',

      AppLanguageKeys.allChanges: 'جميع الغيارات',
      AppLanguageKeys.allReviews: 'جميع التقييمات',
      AppLanguageKeys.reviewsListForAllServices: 'قائمة التقييمات لجميع الخدمات',
      AppLanguageKeys.totalReviews: 'اجمالي التقييمات',

      AppLanguageKeys.providersTermsAndConditions: '''
1. التسجيل والاعتماد
يشترط تسجيل المركز ببيانات صحيحة ودقيقة.
يحق لـ صن مراجعة واعتماد أو رفض طلب التسجيل دون إبداء الأسباب.
يتحمل المزود مسؤولية تحديث بياناته باستمرار.

2. استخدام المنصة
يلتزم المزود باستخدام المنصة فقط للأغراض المصرح بها (تقديم خدمات صيانة السيارات).
يمنع إساءة استخدام المنصة أو محاولة التلاعب بالأنظمة أو العملاء.
أي مخالفة قد تؤدي إلى إيقاف أو إلغاء الحساب.

3. الطلبات والخدمات
يتعهد المزود بتنفيذ الطلبات المتفق عليها بجودة عالية وفي الوقت المحدد.
الأسعار المقدمة للعملاء يجب أن تكون واضحة وشفافة.
يحق للعميل إلغاء أو تعديل الطلب وفق سياسات الإلغاء المعلنة.

4. الالتزامات المالية
يتم الاتفاق على آلية الدفع والتحصيل من خلال منصة صن.
يتحمل المزود أي التزامات مالية تجاه العملاء نتيجة الإخلال بتنفيذ الخدمة.
قد يتم خصم رسوم خدمة أو عمولات لصالح صن حسب السياسة المعتمدة.

5. التقييمات والمراجعات
يحق للعملاء تقييم الخدمات المقدمة.
تُعتبر التقييمات جزءًا من النظام العام للمنصة ولا يمكن حذفها إلا إذا ثبت مخالفتها للسياسة.

6. المسؤولية
يتحمل المزود المسؤولية الكاملة عن جودة الخدمات المقدمة.
صن ليست مسؤولة عن أي أضرار مباشرة أو غير مباشرة تنتج عن تنفيذ الخدمة، وإنما دورها يقتصر على الوساطة بين المزود والعميل.

7. إنهاء الخدمة
يحق لـ صن إيقاف أو إنهاء حساب المزود عند مخالفة الشروط أو الإضرار بسمعة المنصة.
يحق للمزود طلب إغلاق حسابه في أي وقت بعد تسوية الالتزامات المالية.

8. التعديلات على الشروط
تحتفظ صن بحق تعديل أو تحديث الشروط والأحكام في أي وقت.
يتم إخطار المزودين بالتعديلات عبر المنصة أو البريد الإلكتروني.
''',
      AppLanguageKeys.providersPrivacyPolicy: "سياسة الخصوصية لمراكز السيارات (المزودين الخدميين)\n\n1. جمع المعلومات\nنقوم بجمع البيانات الأساسية الخاصة بالمراكز المزودة للخدمة مثل:\n- معلومات المركز (الاسم التجاري – الموقع – نوع الخدمات).\n- بيانات التواصل (الهاتف – البريد الإلكتروني).\n- بيانات الحساب (اسم المستخدم – كلمة المرور).\n\n2. استخدام المعلومات\nتُستخدم المعلومات فقط من أجل:\n- إنشاء الحساب وتفعيله.\n- إدارة الطلبات والخدمات.\n- التواصل بين المركز والعميل.\n- تحسين جودة الخدمة وتجربة الاستخدام.\n\n3. مشاركة المعلومات\nلا تتم مشاركة بيانات المزودين مع أي طرف ثالث خارج نطاق المنصة، إلا إذا كان ذلك مطلوبًا قانونيًا.\nبعض المعلومات مثل اسم المركز والخدمات متاحة للعملاء لتمكينهم من اختيار الخدمة.\n\n4. حماية البيانات\nنلتزم بحماية بيانات المزودين من أي وصول غير مصرح به عبر أنظمة آمنة وتشفير المعلومات الحساسة.\n\n5. حقوق المزود\n- الاطلاع على بياناته المسجلة وتحديثها.\n- طلب حذف الحساب من المنصة.\n- تقديم ملاحظات أو شكاوى بخصوص إدارة البيانات.\n\n6. التعديلات على السياسة\nقد نقوم بتحديث سياسة الخصوصية من وقت لآخر، وسيتم إخطار المزودين عند وجود أي تغييرات جوهرية.",
      AppLanguageKeys.aboutSunIntro: "صن هو منصّة رقمية متخصصة في ربط أصحاب السيارات بمراكز الصيانة والخدمات المعتمدة. نهدف إلى تسهيل وصول العملاء إلى خدماتك وزيادة فرص مركزك في النمو، من خلال إدارة الطلبات بشكل منظم واحترافي عبر منصّة موثوقة وسهلة الاستخدام.\n\nمع صن، تحصل مراكز السيارات على:\n- قاعدة عملاء أوسع.\n- إدارة سهلة للطلبات والخدمات.\n- متابعة دقيقة للتقييمات والأداء.\n- فرص أكبر لزيادة الإيرادات وتوسيع النشاط.",

      AppLanguageKeys.contactAndPoliciesPages: 'صفحات التواصل والسياسات',
      AppLanguageKeys.contactUs: 'تواصل معنا',
      AppLanguageKeys.aboutSun: 'عن صن',
      AppLanguageKeys.privacyPolicy: 'سياسة الخصوصية',
      AppLanguageKeys.termsAndConditions: 'الشروط والاحكام',
      AppLanguageKeys.sendUsMessage: 'قم بارسال رسالتك',
      AppLanguageKeys.name: 'الاسم',
      AppLanguageKeys.messageText: 'نص الرسالة',
      AppLanguageKeys.send: 'إرسال',

      AppLanguageKeys.advertisements: 'الاعلانات',
      AppLanguageKeys.bannerImage: 'صورة البنر',
      AppLanguageKeys.bannerSizeNote: 'المقاس المناسب للصورة هو 1108×428 بكسل',
      AppLanguageKeys.uploadImage: 'ارفع صورة (jpg.jpeg.gif.png.webp)',
      AppLanguageKeys.link: 'الرابط',
      AppLanguageKeys.category: 'تصنيف',
      AppLanguageKeys.storeOffers: 'عروض المتجر',
      AppLanguageKeys.durationFromTo: 'المدة من / الي',
      AppLanguageKeys.createBannerAd: 'إنشاء بانر اعلان',

      AppLanguageKeys.monthly: 'شهري',
      AppLanguageKeys.daily: 'يومي',
      AppLanguageKeys.selectTime: 'اختر الوقت',
      AppLanguageKeys.newRequests: 'الطلبات الجديدة',
      AppLanguageKeys.newRequestsList: 'قائمة الطلبات الجديدة من الخدمات',
      AppLanguageKeys.noRequests: 'لا يوجد طلبات حاليا',
      AppLanguageKeys.internalServicesStats: 'احصائية خدمات الداخلية',
      AppLanguageKeys.weekly: 'أسبوعي',
      AppLanguageKeys.internalServicesProfit: 'أرباح من خدمات الداخلية',
      AppLanguageKeys.internalServicesRating: 'تقييم لخدمات الداخلية',
      AppLanguageKeys.afterReceivingRequests: 'بعد استقبال طلبات',
      AppLanguageKeys.jobName: 'أسم الوظيفة',
      AppLanguageKeys.requestStatus: 'حالة الطلب',
      AppLanguageKeys.underService: 'تحت الخدمة',
      AppLanguageKeys.requestDate: 'تاريخ الطلب',
      AppLanguageKeys.servicePrice: 'سعر الخدمة',
      AppLanguageKeys.delivered: 'تم التسليم',
      AppLanguageKeys.requestRejected: 'رفض الطلب',
      AppLanguageKeys.newRequest: 'طلب جديد',

      AppLanguageKeys.addNewUser: 'أضافة مستخدم جديد',
      AppLanguageKeys.userPermissionsSettings: 'إعدادات صلاحيات المستخدمين داخل النظام',
      AppLanguageKeys.employeeName: 'أسم الموظف',
      AppLanguageKeys.jobTitle: 'اسم الوظيفة',
      AppLanguageKeys.accountStatus: 'حالة الحساب',
      AppLanguageKeys.active: 'مفعل',
      AppLanguageKeys.inactive: 'غير مفعل',
      AppLanguageKeys.picture: 'صورة',
      AppLanguageKeys.uploadPicture: 'رفع صورة',
      AppLanguageKeys.userPermissions: 'صلاحيات المستخدم',
      AppLanguageKeys.statistics: 'الاحصائيات',
      AppLanguageKeys.servicesSettings: 'إعدادات خدمات',
      AppLanguageKeys.carModelSettings: 'إعدادت موديل السيارات',
      AppLanguageKeys.accountManagement: 'ادارة الحسابات',
      AppLanguageKeys.permissionsManagement: 'ادارة الصلاحيات',
      AppLanguageKeys.organizationManagement: 'ادارة المنشأة',
      AppLanguageKeys.permissionsFromServices: 'صلاحيات من الخدمات التي يحصل عليها المستخدم',
      AppLanguageKeys.maintenanceServices: 'خدمات الصيانة',

      AppLanguageKeys.nissanServiceSettings: 'اعدادات الخدمات الخاص بالسيارات نيسان',
      AppLanguageKeys.serviceSettingsDetails: 'اعدادات الخدمات من حيث نوع الخدمة والاسعار والباقات المشتركة',
      AppLanguageKeys.backToSettings: 'رجوع للصفحة الاعدادت',
      AppLanguageKeys.internalServices: ' خدمات داخلية',
      AppLanguageKeys.addServices: 'إضافة الخدمات',
      AppLanguageKeys.mobileAndTransportServices: 'الخدمات المتنقلة والنقل',
      AppLanguageKeys.carSpareParts: 'قطع غيار سيارات',
       AppLanguageKeys.serviceSettings: 'اعدادات الخدمات',
      AppLanguageKeys.addInternalServices: 'أضافة صيانات وخدمات داخلية',
      AppLanguageKeys.allCategories: 'جميع الفئات',
      AppLanguageKeys.unifiedPriceForAll: 'سعر موحد لكل فئات',
      AppLanguageKeys.pricePerCategory: 'سعر لكل فئة',
      AppLanguageKeys.sar: 'ريال سعودي',
      AppLanguageKeys.add: 'إضافة',
      AppLanguageKeys.carWash: 'غسيل سيارات',
      AppLanguageKeys.battery: 'بطارية',
      AppLanguageKeys.back: 'رجوع',
      AppLanguageKeys.save: 'حفظ',
      ////End////

      ////Change the glass////
      AppLanguageKeys.frontGlassReplacement: 'تغيير زجاج امامي',
      AppLanguageKeys.sideGlassReplacement: 'تغيير زجاج جانبي',
      AppLanguageKeys.frontGlass: 'زجاج امامي',
      ////End////

      ////Change tires////
      AppLanguageKeys.tireBalancing: 'ترصيص كفرات',
      AppLanguageKeys.wheelAlignment: 'وزن ازرعة',
      ////End////

      ////Delivery laundry////
        AppLanguageKeys.goldPackage: 'باقة جولد',
      AppLanguageKeys.interiorPolishing: 'تلميع داخلي للسيارة',
      AppLanguageKeys.sendRequest: 'إرسال الطلب',
      AppLanguageKeys.requestAccepted: 'تم قبول الطلب',
      AppLanguageKeys.highwayServiceCompleted: 'تم الانتهاء من خدمة الطرق السريعة',
      AppLanguageKeys.pleaseSelectCarLocation: 'برجاء قم بتتحديد مكان سيارتك',

      ////End////

      ////Car Batteries////
      AppLanguageKeys.glassReplacement: 'تغيير زجاج',
      AppLanguageKeys.hour: 'ساعة',

      AppLanguageKeys.viewReviews: 'عرض التقييمات',

      AppLanguageKeys.newItem: 'جديد',
      AppLanguageKeys.selectServices: 'أختيار الخدمات التي تحتاجها',

      ////Order list////
      AppLanguageKeys.createNewRequest: 'إنشاء طلب جديد',
      AppLanguageKeys.requestReceived: 'تم الاستلام',
      AppLanguageKeys.onTheWayToYou: 'في الطريق اليك',
      AppLanguageKeys.cancelBooking: 'إلغاء الحجز',

      AppLanguageKeys.addYourComment: 'أضف تعليقك',
      ////end////
      ////Request - Service////
      AppLanguageKeys.selectServiceType: 'أختر نوع الخدمة',
      AppLanguageKeys.roadService: 'خدمة الطريق',
      AppLanguageKeys.serviceDetails: 'تفاصيل الخدمة التي تحتاجها',
      AppLanguageKeys.desiredServicePrice: 'سعر الخدمة المرغوب دفعها',
      AppLanguageKeys.serviceCompletionTime: 'متي تريد انهاء الخدمة',
      AppLanguageKeys.selectCurrentLocation: 'تحديد موقعك الحالي',

      AppLanguageKeys.saturday: 'السبت',
      AppLanguageKeys.sunday: 'الأحد',
      AppLanguageKeys.monday: 'الاثنين',
      AppLanguageKeys.tuesday: 'الثلاثاء',
      AppLanguageKeys.wednesday: 'الأربعاء',
      AppLanguageKeys.thursday: 'الخميس',
      AppLanguageKeys.friday: 'الجمعة',
      AppLanguageKeys.enterYourData: 'أدخل بياناتك',
      AppLanguageKeys.waitingForOffers: 'في انتظار استقبال العروض',
      AppLanguageKeys.serviceCenterOffers: 'العروض المقدمة من مراكز الخدمة',
      AppLanguageKeys.mobileMaintenanceOffer: 'صيانة متنقلة',

      AppLanguageKeys.acceptOffer: 'قبول العرض',
      AppLanguageKeys.rejectRequest: 'رفض الطلب',
      AppLanguageKeys.withinOneDay: 'خلال يوم واحد',

      AppLanguageKeys.requestNumber: 'طلب 44121',
      AppLanguageKeys.daysAgo: 'منذ يومين',
      AppLanguageKeys.expectedArrival: 'توقع الوصول',
      AppLanguageKeys.notes: 'الملاحظات',
      AppLanguageKeys.contactMaintenanceRep: 'التواصل مع مندوب الصيانة',
      AppLanguageKeys.maintenanceRep: 'مندوب الصيانة',
      AppLanguageKeys.trackTechnician: 'تتبع الفني',

      AppLanguageKeys.payBill: 'دفع فاتورة',
      AppLanguageKeys.brakeRepair: 'إصلاح نظام الفرامل (تغيير الفحمات - تيل الفرامل)',
      AppLanguageKeys.electricalRepair: 'إصلاح عطل كهربائي في الأنوار أو العدادات',

      AppLanguageKeys.mobileService: 'خدمة متنقلة',
      AppLanguageKeys.serviceRequest: 'طلب الخدمة',
      AppLanguageKeys.serviceProvidersArrival: 'وصول مزودي الخدمة',
      AppLanguageKeys.serviceCompleted: 'انتهاء الخدمة',
      AppLanguageKeys.serviceRating: 'تقييم الخدمة',

      ////End////

      ////Change Car////

      AppLanguageKeys.myCar: 'سيارتي',
      AppLanguageKeys.setAsPrimaryCar: 'استخدام سيارة كحساب رئيسي',
      AppLanguageKeys.wifeCar: 'سيارة زوجتي',
      AppLanguageKeys.replaceCarAsAccount: 'استبدال السيارة كحساب',
      AppLanguageKeys.mySecondCar: 'سيارتي الثانية',
      AppLanguageKeys.carBills: 'فواتير السيارة',
      AppLanguageKeys.carOwner: 'صاحب السيارة',
      AppLanguageKeys.carChassisNumber: 'رقم الشاصيه',
      AppLanguageKeys.carLicense: 'رخصة السيارة',
      AppLanguageKeys.carFiles: 'ملفات السيارة',
      AppLanguageKeys.transferCar: 'نقل لمستخدم أخر',
      AppLanguageKeys.deleteCar: 'حذف السيارة',
      ////END////

      ////Wallet- Bonus - Send code to friend////

      AppLanguageKeys.currentBalance: 'رصيد الحالي',
      AppLanguageKeys.rechargeWallet: 'شحن المحفظة',
      AppLanguageKeys.walletTransactionDetails: 'تفاصيل عمليات المحفظة',

      AppLanguageKeys.bonusBalance: 'هدية رصيد اضافي',
      AppLanguageKeys.payMaintenanceService: 'دفع خدمة لصيانة اصلاح',
      AppLanguageKeys.rechargeFromVisa: 'شحن رصيد من رقم فيز 555',

      AppLanguageKeys.myPoints: 'جميع نقاطي',
      AppLanguageKeys.pointsDetails: 'تفاصيل النقاط',
      AppLanguageKeys.bonusPoints: 'هدية نقاط',
      AppLanguageKeys.redeemPointsService: 'خصم نقاط لاستخدمها في خدمة',
      AppLanguageKeys.rechargeFromVisaPoints: 'شحن رصيد من رقم فيز 555',
      AppLanguageKeys.inviteFriendText: 'ارسل الكود لصديقك واحصل علي 50 ريال عند الاشتراك لأول مره',
      AppLanguageKeys.referralCode: 'الكود',
      AppLanguageKeys.copyCode: 'نسخ الكود',
      AppLanguageKeys.shareLink: 'مشاركة الرابط',

      AppLanguageKeys.codeCopiedSuccessfully: 'تم نسخ الكود بنجاح!',

      ////End////

      ////Warranty////
      AppLanguageKeys.warrantyPeriod: 'لمدة 5 سنوات',
      AppLanguageKeys.warrantyServiceCenters: 'الاستفادة من ضمان الخدمات عبر مراكزنا المعتمدة',
      AppLanguageKeys.warrantyCarsMarket: 'ضمان السيارات من بيع وشراء في حراج السيارات',
      AppLanguageKeys.warrantyFreeMaintenance: 'تقديم خدمات صيانة مجانية طوال فترة الضمان',
      AppLanguageKeys.warrantySubscription: 'اشتراك في الضمان',
      AppLanguageKeys.balanceChargedSuccessfully: 'تم شحن الرصيد بنجاح',
      AppLanguageKeys.showServicesAtApprovedCenters: 'عرض الخدمات في المراكز المعتمدة',

      ////End////
      ////Profile////

      AppLanguageKeys.newMessage: 'رسالة جديدة',
      AppLanguageKeys.order255Expired: 'انتهاء طلب 255',

      AppLanguageKeys.privacyTitle: 'سياسة الخصوصية',
      AppLanguageKeys.privacyIntro: '''
      في تطبيق "صن"، نولي أهمية قصوى لخصوصية مستخدمينا ونسعى دائمًا لحماية بياناتهم الشخصية. 
      توضح هذه السياسة كيفية جمع واستخدام ومشاركة المعلومات عند استخدامك لخدماتنا.
      
      المعلومات التي نقوم بجمعها
      عند استخدامك لتطبيق صن، قد نقوم بجمع بعض المعلومات اللازمة لتقديم الخدمة، مثل:
      - الاسم الكامل
      - رقم الجوال
      - عنوان البريد الإلكتروني
      - الموقع الجغرافي لتحديد مكان السيارة (بموافقتك)
      - تفاصيل الطلبات السابقة وسجلات الدفع
      
      كيفية استخدام المعلومات
      نستخدم المعلومات التي يتم جمعها من أجل:
      - تقديم خدمات الصيانة بشكل دقيق وفعال
      - التواصل معك بشأن حالة الطلب أو العروض الخاصة
      - تحسين أداء التطبيق وتجربة المستخدم
      - ضمان الأمان ومنع الاستخدام غير المشروع
      
      مشاركة المعلومات
      نحن لا نشارك بياناتك مع أي طرف ثالث خارج نطاق تطبيق "صن" إلا في الحالات التالية:
      - مع مراكز الصيانة المعتمدة لتنفيذ طلباتك
      - مع بوابات الدفع الإلكتروني لإتمام عمليات الدفع
      - إذا تطلب الأمر ذلك قانونيًا أو بطلب من الجهات المختصة
      
      حماية البيانات
      نلتزم بتطبيق أعلى معايير الأمان في حفظ بياناتك، ونستخدم تقنيات حماية متقدمة لضمان عدم الوصول غير المصرح به إلى معلوماتك.
      
      حقوق المستخدم
      يحق لك في أي وقت:
      - طلب نسخة من بياناتك الشخصية
      - تعديل أو تحديث بياناتك
      - طلب حذف حسابك من التطبيق
      
      التعديلات على السياسة
      قد نقوم بتحديث سياسة الخصوصية من وقت لآخر. وسيتم إشعارك بأي تغييرات هامة من خلال التطبيق أو عبر البريد الإلكتروني.
      
      التواصل معنا
      لأي استفسارات تتعلق بسياسة الخصوصية، يمكنك التواصل معنا عبر:
      📧 البريد الإلكتروني: privacy@sun-app.com
      📞 الدعم الفني: 9200XXXXXX
      ''',

      AppLanguageKeys.username: 'اسم المستخدم',
      AppLanguageKeys.nationality: 'الجنسية',
      AppLanguageKeys.language: 'اللغة',
      AppLanguageKeys.arabic: 'العربية',
      AppLanguageKeys.english: 'الانجليزية',

      AppLanguageKeys.yourCarAddress: 'عنوان سيارتك',
      AppLanguageKeys.addAddress: 'أضافة عنوان',
      AppLanguageKeys.creditCards: 'كروت الأئتمان البنكي',
      AppLanguageKeys.cardName: 'أسم الكارت',
      AppLanguageKeys.cardNumber: 'رقم الكارت',
      AppLanguageKeys.cvv: '3 ارقام CVV',
      AppLanguageKeys.expiryDate: 'تاريخ الانتهاء',
      AppLanguageKeys.addPaymentCard: 'أضافة بطاقه دفع',
      AppLanguageKeys.financialTransactions: 'المعاملات المالية',

      AppLanguageKeys.qrCode: 'QR code',
      AppLanguageKeys.scanQrCode: 'مسح QR code',
      ////End////

      ////InsuranceNew////
      AppLanguageKeys.selectInsuranceType: 'برجاء تحديد نوع التأمين الخاص بك',
      AppLanguageKeys.integrativeInsurance: 'تأمين تكاملي',

      AppLanguageKeys.sixMonthlyPayments: '6 دفعات شهرية',
      AppLanguageKeys.twelveMonthlyPayments: '12 دفعة شهرية',
      AppLanguageKeys.semiAnnual: 'نصف سنوي',
      AppLanguageKeys.annual: 'سنوي',
      AppLanguageKeys.insuranceAccountRegistration: 'تسجيل حساب التأمين',
      AppLanguageKeys.firstPayment: 'سداد أول دفعة',
      ////End////


      ////Insurance////

      AppLanguageKeys.insuranceOffers: 'عروض التأمينات (نيسان CVR)',

      AppLanguageKeys.comprehensiveInsurance: 'تأمين شامل',
      AppLanguageKeys.thirdPartyInsurance: 'تأمين ضد الغير',
      AppLanguageKeys.bestOffer: 'أفضل عرض',
      AppLanguageKeys.scienceInsurance: 'ساينس للتأمينات',
      AppLanguageKeys.annualPayment: 'دفعة سنوية',
      AppLanguageKeys.cooperativeInsurance: 'التعاونية للتأمينات السيارات',
      AppLanguageKeys.enterPolicyData: 'أدخل بيانات الوثيقة لاظهار الدفعات المستحقة',
      AppLanguageKeys.policyNumber: 'رقم وثيقة التأمين',
      AppLanguageKeys.identityVerification: 'التحقق من الهوية',
      AppLanguageKeys.checkAbsherAccount: 'تحقق في حساب نفاذ الوطني',
      AppLanguageKeys.loginViaAbsher: 'الدخول الي حساب النفاذ عبر النفاذ الوطني الموحد',
      AppLanguageKeys.nationalIdOrIqama: 'رقم الهوية الوطنية / رقم الإقامة',
      AppLanguageKeys.verifyAbsher: 'التحقق من النفاذ',
      AppLanguageKeys.yourInsuranceData: 'بيانات التأمين الخاصة بك',
      AppLanguageKeys.beneficiaryName: 'اسم المستفيد',
      AppLanguageKeys.insurancePolicyNumber: 'رقم وثيقة التأمين',
      AppLanguageKeys.nationalIdNumber: 'رقم الهوية',
      AppLanguageKeys.carPlateNumber: 'رقم لوحة السيارة',
      AppLanguageKeys.chassisNumber: 'رقم الشاصيه',
      AppLanguageKeys.insuranceType: 'نوع التأمين',
      AppLanguageKeys.insuranceValue: 'قيمة التأمين',
      AppLanguageKeys.installmentValue: 'قيمة القسط',
      AppLanguageKeys.linkInsuranceWithSanad: 'ربط حساب التأمين مع صن',
      AppLanguageKeys.pleaseWait: 'برجاء الانتظار',
      AppLanguageKeys.policyData: 'بيانات بوليصة التأمين',
      AppLanguageKeys.annualPayments: 'الدفعات السنوية',
      AppLanguageKeys.firstInstallment: 'الدفعة الأولى - 20/3',
      AppLanguageKeys.paid: 'تم السداد',
      AppLanguageKeys.details: 'تفاصيل',
      AppLanguageKeys.secondInstallment: 'الدفعة الثانية - 20/5',
      AppLanguageKeys.thirdInstallment: 'الدفعة الثالثة - 20/3',
      AppLanguageKeys.payInstallment: 'سداد القسط',
      AppLanguageKeys.notPaid: 'لم يتم السداد',
      AppLanguageKeys.fourthInstallment: 'الدفعة الرابعة - 20/5',
      AppLanguageKeys.nextInstallmentJuly: 'القسط القادم 7/20',
      AppLanguageKeys.nextInstallmentAugust: 'القسط القادم 8/20',

      AppLanguageKeys.insuranceInstallment: 'قسط التأمين',

      AppLanguageKeys.total: 'الإجمالي',

      AppLanguageKeys.selectPaymentOptionFirst: 'يرجى اختيار طريقة الدفع أولاً',
      AppLanguageKeys.thirdInstallmentDetails: 'تفاصيل الدفعة الثالثة 20/3',
      AppLanguageKeys.paidBy: 'تم الدفع بواسطة',

      ////END////

      AppLanguageKeys.companyEmlopyeeLogin:'تسجيل الدخول لموظفي الشركات',

      AppLanguageKeys.carSettings: "إعداد السيارات",
      AppLanguageKeys.carAccount: 'حساب السيارة',
      AppLanguageKeys.useThisCarForWork: 'استخدام هذه السيارة حاليا للعمل',
      AppLanguageKeys.nissanSunny: 'نيسان صني',
      AppLanguageKeys.carPlateAndModel: "س ث ب 245 - نيسان",
      AppLanguageKeys.useThisCarForWorkShort: 'أستخدام هذه السيارة للعمل',

      AppLanguageKeys.requestSentToCompany: 'تم ارسال الطلب لادارة الشركة\nللموافقة علي طلب الصيانة',
      AppLanguageKeys.waitingForApproval: 'في انتظار موافقة الطلب',
      AppLanguageKeys.requestApproved: 'تم الموافقة علي طلبك الصيانة',
      AppLanguageKeys.showMapLocation: 'عرض موقع الخريطة',

      AppLanguageKeys.maintenanceReports: 'تقارير الصيانة',
      AppLanguageKeys.contactManagement: 'التواصل مع الإدارة',
      AppLanguageKeys.technicalSupport: 'الدعم الفني',
      AppLanguageKeys.maintenanceReportsByPeriod: 'تقارير الصيانة حسب الفترة المختارة',
      AppLanguageKeys.fuel: 'البترول',
      AppLanguageKeys.searchTo: 'إلى',
      AppLanguageKeys.totalInvoices: 'إجمالي الفواتير',
      AppLanguageKeys.totalFuel: 'إجمالي البترول',
      AppLanguageKeys.serviceCenterMaintenanceCount: 'عدد الصيانات لمراكز الخدمة',
      AppLanguageKeys.refuelCount: 'عدد مرات التفويل',
      AppLanguageKeys.washAndClean: 'غسيل ونظافة',
      AppLanguageKeys.invoiceDetailsInPeriod: 'تفاصيل الفواتير خلال الفترة',




    },
    'en': {

      AppLanguageKeys.startNow:'Start now',
      AppLanguageKeys.yourCarIsSafeWithSan:'Your car is safe with San',
      AppLanguageKeys.maintenanceAndRepairServices:'Maintenance and repair services',
      AppLanguageKeys.emergencyService:'Emergency service',
      AppLanguageKeys.buyingAndSellingCars:'Buying and selling cars',
      AppLanguageKeys.listYourCarInASafeAndReliableAuctionWithSan:'List your car in a safe and reliable auction with San',
      AppLanguageKeys.highwayAssistance:'24/7 Highway Assistance Wherever You Are',
      AppLanguageKeys.weSendYouProfessional:'We send you professional technicians who diagnose and fix the problem.',
      AppLanguageKeys.integratedSolutions:'Integrated solutions for warranty and insurance for all services in one place',
      AppLanguageKeys.login:'Login',
      AppLanguageKeys.loginAsAnIndividualOrCompany:'Log in as an individual or company',
      AppLanguageKeys.registerAsAnIndividual:'Register as an individual',
      AppLanguageKeys.registerAsCompanies:'Register as companies',
      AppLanguageKeys.orRegisterVia:'Or register via',
      AppLanguageKeys.appleAccount:'Apple account',
      AppLanguageKeys.googleAccount:'Google',
      AppLanguageKeys.noAccount:"You don't have an account",
      AppLanguageKeys.registerHere:'Register here',
      AppLanguageKeys.carSettings: "Car Settings",
      AppLanguageKeys.carAccount: "Car Account",
      AppLanguageKeys.useThisCarForWork: "Use this car for work currently",
      AppLanguageKeys.nissanSunny: "Nissan Sunny",
      AppLanguageKeys.carPlateAndModel: "S T B 245 - Nissan",
      AppLanguageKeys.useThisCarForWorkShort: "Use this car for work",
      AppLanguageKeys.requestSentToCompany: 'Request sent to company management\nfor maintenance approval',
      AppLanguageKeys.waitingForApproval: 'Waiting for request approval',
      AppLanguageKeys.requestApproved: 'Your maintenance request has been approved',
      AppLanguageKeys.showMapLocation: 'Show map location',

      AppLanguageKeys.maintenanceReports: 'Maintenance Reports',
      AppLanguageKeys.contactManagement: 'Contact Management',
      AppLanguageKeys.technicalSupport: 'Technical Support',
      AppLanguageKeys.maintenanceReportsByPeriod: 'Maintenance reports based on the selected period',
      AppLanguageKeys.fuel: 'Fuel',
      AppLanguageKeys.searchTo: 'To',
      AppLanguageKeys.totalInvoices: 'Total Invoices',
      AppLanguageKeys.totalFuel: 'Total Fuel',
      AppLanguageKeys.serviceCenterMaintenanceCount: 'Number of maintenance visits to service centers',
      AppLanguageKeys.refuelCount: 'Number of refuel times',
      AppLanguageKeys.washAndClean: 'Wash & Clean',
      AppLanguageKeys.invoiceDetailsInPeriod: 'Invoice details during the selected period',

      AppLanguageKeys.pleaseEnterYourPhoneNumberAndPassword :'Please enter your phone number and password',
      AppLanguageKeys.phoneNumber:'Phone number',
      AppLanguageKeys.password:'Password',
      AppLanguageKeys.forgotPassword :'Forgot password',
      AppLanguageKeys.redeemFromHere :"Redeem from here",
      AppLanguageKeys.loginAsAGuestUser :'Login as a guest user',
      AppLanguageKeys.userName:'User name',
      AppLanguageKeys.email:'Email',
      AppLanguageKeys.resetPassword:'Reset password',
      AppLanguageKeys.createAnAccount:'Create an account',
      AppLanguageKeys.accountInformation:'Please enter account information and password',
      AppLanguageKeys.createAnAccountInTheNameOfACompany:'Create an account in the name of a company',
      AppLanguageKeys.confirmPin :'Confirm pin',
      AppLanguageKeys.pleaseEnterThePinSentToYourPhoneNumber:'Please enter the pin sent to your phone number',
      AppLanguageKeys.iDidNotReceiveAMessage :'I did not receive a message',
      AppLanguageKeys.resend:'Resend',
      AppLanguageKeys.yourCarData   :'your car data',
      AppLanguageKeys.toViewYourCarsModelsServicesAndCenters :"To view your car's model's services and centers",
      AppLanguageKeys.chooseTheCategory :"Choose the category",
      AppLanguageKeys.modelYear :"Model year",
      AppLanguageKeys.yourCarName :"Your car name",
      AppLanguageKeys.exampleModelName :"(Example: My Honda - My wife's car)",
      AppLanguageKeys.chooseYourCarModel: 'Choose your car model',
      AppLanguageKeys.youCanSearchToSelectYourCarCategory: 'You can search to select your car category',
      AppLanguageKeys.profile: 'Profile',
      AppLanguageKeys.skipLater: 'Skip later',
      AppLanguageKeys.next: 'Next',
      AppLanguageKeys.locationServiceDisabled: "Location service disabled",
      AppLanguageKeys.locationNotFound: "Location not found",
      AppLanguageKeys.yourLocation: 'Your location',
      AppLanguageKeys.nearbyServices: 'Browse nearby services',
      AppLanguageKeys.maintenanceAndRepair: 'Maintenance and repair',
      AppLanguageKeys.oilChange: 'Oil change',
      AppLanguageKeys.highways: 'Highways',
      AppLanguageKeys.carElectricity: 'Car electricity',
      AppLanguageKeys.spareParts: 'Spare parts',
      AppLanguageKeys.mobileMaintenance: 'Mobile maintenance',
      AppLanguageKeys.carAuction: 'Car auction',
      AppLanguageKeys.transportService: 'Transport service',
      AppLanguageKeys.favoriteServices: 'Favorite services',
      AppLanguageKeys.selectFavoriteServices: 'You can select your favorite services',
      AppLanguageKeys.chooseFavoriteServices: 'Choose favorite services',
      AppLanguageKeys.congratulations: 'Congratulations, you got',
      AppLanguageKeys.gift: 'Gift',
      AppLanguageKeys.sunWarranty: 'Sun warranty',
      AppLanguageKeys.fiveYearsWarranty: '5 years warranty gift',
      AppLanguageKeys.showServicesNow: 'Show services now',
      AppLanguageKeys.sunWarrantyFeatures: 'Sun warranty features',
      AppLanguageKeys.warrantyCenters: 'Benefit from warranty at our authorized centers',
      AppLanguageKeys.carWarrantyAuction: 'Car warranty for buy/sell in car auction',
      AppLanguageKeys.freeMaintenance: 'Free maintenance during warranty period',
      AppLanguageKeys.home: 'Home',
      AppLanguageKeys.myOrders: 'My orders',
      AppLanguageKeys.map: 'Map',
      AppLanguageKeys.requestService: 'Request a service',
      AppLanguageKeys.services: 'Services',
      AppLanguageKeys.searchPlaceholder: 'Search for any service, center name, or anything',
      AppLanguageKeys.tireSpareParts: "Tire spare parts",
      AppLanguageKeys.discount50: "50% discount",
      AppLanguageKeys.variousServices: "Various services",
      AppLanguageKeys.repairAndMaintenance: "Repair and maintenance",
      AppLanguageKeys.oilServices: "Oil services",
      AppLanguageKeys.cleaningAndWashing: "Cleaning and washing",
      AppLanguageKeys.carInsurance: "Car insurance",
      AppLanguageKeys.carMarket: "Car market",
      AppLanguageKeys.periodicMaintenance: "Periodic maintenance",
      AppLanguageKeys.sparePartsService: "Spare parts service",
      AppLanguageKeys.carWarranty: "Car warranty",
      AppLanguageKeys.glass: "Glass",
      AppLanguageKeys.tireChange: "Tire change",
      AppLanguageKeys.batteries: "Batteries",
      AppLanguageKeys.roadAssistance: "Road assistance",
      AppLanguageKeys.from: "From",
      AppLanguageKeys.nearServiceCenters: "Nearby Service Centers",
      AppLanguageKeys.viewAll: "View All",
      AppLanguageKeys.oneKm: "1 km",
      AppLanguageKeys.sparePartsForCar: "Spare parts for your car - ",
      AppLanguageKeys.nissanCVR: "Nissan CVR",
      AppLanguageKeys.newKey: "New",
      AppLanguageKeys.harajCars: "Car Auction",
      AppLanguageKeys.carNews: "Car News",
      AppLanguageKeys.myAccount: "My Account",
      AppLanguageKeys.amrMohey: "Amr Mohey",
      AppLanguageKeys.myCarNissan: "My Nissan CRV",
      AppLanguageKeys.basicServices: "Basic Services",
      AppLanguageKeys.premiumServices: "Premium Services",
      AppLanguageKeys.searchResult: "Search Result",
      AppLanguageKeys.filter: "Filter",
      AppLanguageKeys.sortBy: "Sort By",
      AppLanguageKeys.moreFeatures: "More Features",
      AppLanguageKeys.warrantyStatus: "Warranty Status",
      AppLanguageKeys.searchView: "Show Search",
      AppLanguageKeys.najmRequest: "Najm Request",
      AppLanguageKeys.maintenanceCenter1: "Eco Car Maintenance Center",
      AppLanguageKeys.maintenanceDesc1: "Repair & Maintenance - Oil Change",
      AppLanguageKeys.maintenanceCenter2: "Car Clinic",
      AppLanguageKeys.maintenanceDesc2: "Cleaning & Spare Parts",
      AppLanguageKeys.tires: "Tires",
      AppLanguageKeys.speed900: "Cladic Speed 900",
      AppLanguageKeys.price450: "450 SAR",
      AppLanguageKeys.accessories: "Accessories",
      AppLanguageKeys.oils: "Oils",
      AppLanguageKeys.carDesc: "Cladic Speed 900",
      AppLanguageKeys.price80k: "80,000 SAR",
      AppLanguageKeys.riyadh: "Riyadh",
      AppLanguageKeys.jeddah: "Jeddah",
      AppLanguageKeys.june2025: "June 2025",
      AppLanguageKeys.testDrive: "Test Drive",
      AppLanguageKeys.hyundaiDesc: "Hyundai Palisade 2026: Family Luxury, Price Confuses Competitors",
      AppLanguageKeys.carOffers: "Car Offers",
      AppLanguageKeys.kiaDesc: "Don't miss Kia K4 2026 offers on spare parts",
      AppLanguageKeys.august2025: "August 2025",
      AppLanguageKeys.latestCars: "Latest Cars",
      AppLanguageKeys.audiDesc: "2025 Audi Q2: Prices and Specifications",
      AppLanguageKeys.myCarData: "My Car Data",
      AppLanguageKeys.personalData: "Personal Data",
      AppLanguageKeys.myAddress: "My Address",
      AppLanguageKeys.harajMessages: "Haraj Messages",
      AppLanguageKeys.oneNotification: "1",
      AppLanguageKeys.notifications: "Notifications",
      AppLanguageKeys.myQrCode: "My QR Code",
      AppLanguageKeys.bankCards: "Bank Credit Cards",
      AppLanguageKeys.transactions: "Transactions",
      AppLanguageKeys.wallet: "Wallet",
      AppLanguageKeys.walletBalance: "200 SAR",
      AppLanguageKeys.points: "Points",
      AppLanguageKeys.pointsBalance: "1000 Points",
      AppLanguageKeys.settings: "Settings",
      AppLanguageKeys.faq: "FAQ",
      AppLanguageKeys.userRating: "User Rating",
      AppLanguageKeys.sendToFriend: "Send to Friend",
      AppLanguageKeys.logout: "Logout",
      AppLanguageKeys.repair: "Repair & Maintenance",
      AppLanguageKeys.centerName: "Center Name",
      AppLanguageKeys.price200: "200 SAR",
      AppLanguageKeys.newOrder: "Create New Order",
      AppLanguageKeys.sparePartsTitle: "Spare Parts",
      AppLanguageKeys.tiresTitle: "Tires",
      AppLanguageKeys.price150: "150 SAR",
      AppLanguageKeys.received: "Received",
      AppLanguageKeys.price300: "300 SAR",
      AppLanguageKeys.onTheWay: "On the Way",
      AppLanguageKeys.gulfServiceCenter: "Gulf Service Center",
      AppLanguageKeys.riyadhServiceCenter: "Riyadh Car Center",
      AppLanguageKeys.twoKm: "2 km",
      AppLanguageKeys.time48h: "48 hours",
      AppLanguageKeys.time24h: "24 hours",
      AppLanguageKeys.mobile: "Mobile",
      AppLanguageKeys.fixed: "Fixed",
      AppLanguageKeys.repairAndOil: "Repair & Maintenance - Oil Change",
      AppLanguageKeys.cleaningService: "Cleaning & Transport Service",
      AppLanguageKeys.speedWay:"speed way",
      AppLanguageKeys.centernName: 'Center Name',
      AppLanguageKeys.bookService: 'Book Service',
      AppLanguageKeys.selectNeededServices: 'Select the services you need',
      AppLanguageKeys.confirmService: 'Confirm Service',
      AppLanguageKeys.writeNotes: 'Write your notes or requirements for the service providers',
      AppLanguageKeys.confirmBookingTime: 'Confirm the suitable time for your booking',
      AppLanguageKeys.selectDay: 'Select Day',
      AppLanguageKeys.selectHour: 'Select Hour',
      AppLanguageKeys.bookTime: 'Book Time',
      AppLanguageKeys.confirmServiceBooking: 'Confirm Service Booking',
      AppLanguageKeys.confirmBooking: 'Confirm Booking',
      AppLanguageKeys.sparePartsAndProducts: 'Spare Parts & Products',
      AppLanguageKeys.skipToCompleteBooking: 'Skip to Complete Booking',
      AppLanguageKeys.available2Items: '2 Items Available',
      AppLanguageKeys.selectSize: 'Choose the desired size',
      AppLanguageKeys.skip: 'Skip',
      AppLanguageKeys.addToCart: 'Add to Cart',
      AppLanguageKeys.order: 'Order',
      AppLanguageKeys.products: 'Products',
      AppLanguageKeys.bridgestoneTire: 'Bridgestone Car Tire',
      AppLanguageKeys.serviceAddress: 'Service Address',
      AppLanguageKeys.openMap: 'Open Map',
      AppLanguageKeys.mainServiceAddress: 'Main Service Center Address',

      AppLanguageKeys.all: "All",
      AppLanguageKeys.internalParts: "Internal Parts",
      AppLanguageKeys.displayAuction: "Auction",
      AppLanguageKeys.search: "Search",
      AppLanguageKeys.writeHere: "Write here",
      AppLanguageKeys.reviews: "Reviews",
      AppLanguageKeys.goodServiceCenter: "Good Service Center",
      AppLanguageKeys.excellentService: "Excellent service! I requested AC inspection and maintenance, and the technician arrived in less than an hour. Very professional,",
      AppLanguageKeys.enterCarAddress: "Enter your car address",
      AppLanguageKeys.locating: "Locating...",
      AppLanguageKeys.locationFailed: "Failed to locate",
      AppLanguageKeys.appointment: "Appointment",
      AppLanguageKeys.edit: "Edit",
      AppLanguageKeys.dateExample: "1 January",
      AppLanguageKeys.timeExample: "Tuesday 3:00 PM",
      AppLanguageKeys.searchYourAddress: "Search your address",
      AppLanguageKeys.confirmCarLocation: "Confirm your car location",
      AppLanguageKeys.payment: "Payment",
      AppLanguageKeys.orderReceived: "Order received",
      AppLanguageKeys.pleaseAttend: "Please attend your car service appointment",
      AppLanguageKeys.orderDetails: "Order details",
      AppLanguageKeys.highwayServiceCenters: "Highway service centers",
      AppLanguageKeys.greeting: "Hello, where are you?",
      AppLanguageKeys.waitingApproval: "Waiting for approval",
      AppLanguageKeys.orderAccepted: "Order accepted",
      AppLanguageKeys.coupon: "Coupon",
      AppLanguageKeys.apply: "Apply",
      AppLanguageKeys.createNewOrder: "Create new order",
      AppLanguageKeys.twoDaysAgo: "Two days ago",
      AppLanguageKeys.repairCenterName: "Repair center name",
      AppLanguageKeys.fourPm: "4:00 PM",
      AppLanguageKeys.contactRepresentative: "Contact maintenance representative",
      AppLanguageKeys.maintenanceRepresentative: "Maintenance representative",
      AppLanguageKeys.topRated: "Top rated",
      AppLanguageKeys.lowestPrice: "Lowest price",
      AppLanguageKeys.highestPrice: "Highest price",
      AppLanguageKeys.invoice: "Invoice",
      AppLanguageKeys.totalServices: "Total services",
      AppLanguageKeys.taxes: "Taxes",
      AppLanguageKeys.address: "Address",
      AppLanguageKeys.providerArrival: "Service provider arrival",
      AppLanguageKeys.serviceEnded: "Service ended",
      AppLanguageKeys.dateTimeExample: "1 January - 4:00 PM",
      AppLanguageKeys.notRatedYet: "Not rated yet",
      AppLanguageKeys.rateService: "Rate service",
      AppLanguageKeys.onlinePayment: "Online payment",
      AppLanguageKeys.sharedPackages: "Shared packages",
      AppLanguageKeys.premiumPackage: "Premium package",
      AppLanguageKeys.fullCleaning: "Full cleaning",
      AppLanguageKeys.interiorPolish: "Interior car polish",
      AppLanguageKeys.packages: "Packages",
      AppLanguageKeys.visa: "Visa",
      AppLanguageKeys.paymentMethod: "Payment method",
      AppLanguageKeys.writeComment: "Write a comment",
      AppLanguageKeys.addComment: "Add your comment",
      AppLanguageKeys.showReviews: "Show reviews",
      AppLanguageKeys.selectService: "Select service",
      AppLanguageKeys.serviceTitle: "Service title",
      AppLanguageKeys.electricity: "Electricity",
      AppLanguageKeys.mechanic: "Mechanic",
      AppLanguageKeys.sendOrder: "Send order",
      AppLanguageKeys.oilMaintenance: "Repair & Maintenance - Oil change",
      AppLanguageKeys.carModel: "Car model",
      AppLanguageKeys.sharedServices: "Shared services",
      AppLanguageKeys.oneLiter: "1 liter",
      AppLanguageKeys.twoLiters: "2 liters",
      AppLanguageKeys.threeLiters: "3 liters",
      AppLanguageKeys.partsAndProducts: "Parts and products",
      AppLanguageKeys.allCenters: "All centers",

      AppLanguageKeys.haraj: "Show Haraj",

      AppLanguageKeys.audiA80: "Audi A80",
      AppLanguageKeys.requestAuction: "Request Auction",
      AppLanguageKeys.enterAuctionNumber: "Enter auction number",
      AppLanguageKeys.minAuctionPrice: "Price must not be less than 90,000 SAR",
      AppLanguageKeys.raiseAuction: "Raise Auction",
      AppLanguageKeys.auctionCreatedSuccess: "Auction request created successfully",
      AppLanguageKeys.automatic: "Automatic",
      AppLanguageKeys.gasoline: "Gasoline",
      AppLanguageKeys.model2022: "2022 Model",
      AppLanguageKeys.seller: "Seller",
      AppLanguageKeys.sellerName: "Omar Mohy",
      AppLanguageKeys.comments20: "20 Comments",
      AppLanguageKeys.askPrice: "What is the offer?",
      AppLanguageKeys.carAddedForSale: "Your car has been added for sale",
      AppLanguageKeys.showCarForSale: "List your car for sale on Haraj",
      AppLanguageKeys.adName: "Ad Name",
      AppLanguageKeys.carDescription: "Car Description",
      AppLanguageKeys.attachCarImages: "Attach Car Images",
      AppLanguageKeys.call: "Call",
      AppLanguageKeys.sendMessage: "Send Message",
      AppLanguageKeys.salePrice: "Sale Price",
      AppLanguageKeys.carCondition: "Car Condition",
      AppLanguageKeys.news: "New",
      AppLanguageKeys.used: "Used",
      AppLanguageKeys.defineCarSpecs: "Define Car Specifications",
      AppLanguageKeys.manual: "Manual",
      AppLanguageKeys.requestTowTruck: "Request Tow Truck",
      AppLanguageKeys.writeNote: "Write a Note",
      AppLanguageKeys.setCurrentLocation: "Set your current location",
      AppLanguageKeys.createServiceRequest: "Create Service Request",

////dashboard////

      AppLanguageKeys.selectCarModelByServices: 'Select car models based on the services you offer to your customers',
      AppLanguageKeys.multipleCarSelectionNote: 'You can select multiple cars at once',
      AppLanguageKeys.searchCarModel: 'You can search to select your car model',
      AppLanguageKeys.chooseCategory: 'Choose Category',
      AppLanguageKeys.selectModelYears: 'Select Model Years',
      AppLanguageKeys.carCategory: 'Car Category',
      AppLanguageKeys.addCarModel: 'Add Car Model',

      AppLanguageKeys.transferCarToAnotherUser: 'Transfer Car to Another User',
      AppLanguageKeys.yourPassword: 'Your Password',
      AppLanguageKeys.newUserEmailOrPhone: 'Email or Phone of New User',
      AppLanguageKeys.reasonForTransfer: 'Reason for Account Transfer',
      AppLanguageKeys.transferNotice: 'All previous maintenance and invoices will be transferred except your personal documents or license.',
      AppLanguageKeys.completeTransfer: 'Complete Transfer',
      AppLanguageKeys.waitingForNewUserApproval: 'Waiting for new user approval to transfer the car',
      AppLanguageKeys.carTransferredToNewOwner: 'Car has been transferred to a new owner',
      AppLanguageKeys.transferYourNewCar: 'Transfer Your New Car',

      AppLanguageKeys.allNotifications: 'All Notifications',
      AppLanguageKeys.searchFrom: 'Search From',
      AppLanguageKeys.to: 'To',
      AppLanguageKeys.allOrders: 'All Orders',
      AppLanguageKeys.ordersListFromServices: 'Orders list from services',
      AppLanguageKeys.newOrders: 'New Orders',
      AppLanguageKeys.completedOrders: 'Completed Orders',
      AppLanguageKeys.confirm: 'Confirm',
      AppLanguageKeys.cancel: 'Cancel',

      AppLanguageKeys.confirmLogout: 'Do you want to confirm logout_dashboard?',
       AppLanguageKeys.allChanges: 'All Changes',
      AppLanguageKeys.allReviews: 'All Reviews',
      AppLanguageKeys.reviewsListForAllServices: 'Reviews list for all services',
      AppLanguageKeys.totalReviews: 'Total Reviews',
      AppLanguageKeys.providersTermsAndConditions: '''
1. Registration and Approval  
The service center must register with accurate and valid information.  
Sun reserves the right to review, approve, or reject any registration request without stating reasons.  
The provider is responsible for keeping their information updated.  

2. Use of the Platform  
The provider agrees to use the platform only for authorized purposes (offering car maintenance services).  
Misuse of the platform or attempts to manipulate the system or customers are strictly prohibited.  
Any violation may result in account suspension or termination.  

3. Orders and Services  
The provider commits to delivering the agreed services with high quality and within the specified time.  
Prices offered to customers must be clear and transparent.  
Customers have the right to cancel or modify their orders according to the published cancellation policy.  

4. Financial Obligations  
Payment and collection mechanisms are managed through the Sun platform.  
The provider is responsible for any financial obligations toward customers resulting from service failure.  
Service fees or commissions may be deducted by Sun according to the approved policy.  

5. Ratings and Reviews  
Customers have the right to rate the provided services.  
Ratings are part of the platform’s public system and cannot be deleted unless they violate the policy.  

6. Liability  
The provider bears full responsibility for the quality of services provided.  
Sun is not responsible for any direct or indirect damages resulting from service execution; its role is limited to mediation between the provider and the customer.  

7. Termination of Service  
Sun reserves the right to suspend or terminate a provider’s account in case of violations or harm to the platform’s reputation.  
The provider may request account closure at any time after settling financial obligations.  

8. Amendments to the Terms  
Sun reserves the right to modify or update these terms and conditions at any time.  
Providers will be notified of any major changes via the platform or email.
''',
      AppLanguageKeys.providersPrivacyPolicy: "Privacy Policy for Car Service Providers\n\n1. Information Collection\nWe collect essential data related to service provider centers such as:\n- Center information (trade name – location – type of services).\n- Contact details (phone – email).\n- Account information (username – password).\n\n2. Use of Information\nThe collected information is used only for:\n- Creating and activating accounts.\n- Managing orders and services.\n- Facilitating communication between the center and the customer.\n- Improving service quality and user experience.\n\n3. Information Sharing\nWe do not share provider data with any third party outside the platform unless legally required.\nSome information, such as the center name and offered services, is visible to customers to help them choose services.\n\n4. Data Protection\nWe are committed to protecting provider data from unauthorized access through secure systems and encryption of sensitive information.\n\n5. Provider Rights\n- Access and update their registered data.\n- Request account deletion from the platform.\n- Submit feedback or complaints regarding data management.\n\n6. Policy Updates\nWe may update the privacy policy from time to time, and providers will be notified of any significant changes.",
      AppLanguageKeys.aboutSunIntro: "Sun is a digital platform that connects car owners with certified maintenance and service centers. We aim to make it easier for customers to reach your services and help your center grow by managing requests efficiently and professionally through a trusted, user-friendly platform.\n\nWith Sun, car centers get:\n- A wider customer base.\n- Easy management of orders and services.\n- Accurate tracking of reviews and performance.\n- Greater opportunities to increase revenue and expand operations.",
      AppLanguageKeys.contactAndPoliciesPages: 'Contact & Policy Pages',
      AppLanguageKeys.contactUs: 'Contact Us',
      AppLanguageKeys.aboutSun: 'About Sun',
      AppLanguageKeys.privacyPolicy: 'Privacy Policy',
      AppLanguageKeys.termsAndConditions: 'Terms and Conditions',
      AppLanguageKeys.sendUsMessage: 'Send Us Your Message',
      AppLanguageKeys.name: 'Name',
      AppLanguageKeys.messageText: 'Message Text',
      AppLanguageKeys.send: 'Send',

      AppLanguageKeys.advertisements: 'Advertisements',
      AppLanguageKeys.bannerImage: 'Banner Image',
      AppLanguageKeys.bannerSizeNote: 'Recommended image size is 1108×428 pixels',
      AppLanguageKeys.uploadImage: 'Upload Image (jpg, jpeg, gif, png, webp)',
      AppLanguageKeys.link: 'Link',
      AppLanguageKeys.category: 'Category',
      AppLanguageKeys.storeOffers: 'Store Offers',
      AppLanguageKeys.durationFromTo: 'Duration From / To',
      AppLanguageKeys.createBannerAd: 'Create Banner Ad',

      AppLanguageKeys.monthly: 'Monthly',
      AppLanguageKeys.daily: 'Daily',
      AppLanguageKeys.selectTime: 'Select Time',
      AppLanguageKeys.newRequests: 'New Requests',
      AppLanguageKeys.newRequestsList: 'List of new service requests',
      AppLanguageKeys.noRequests: 'No requests currently',
      AppLanguageKeys.internalServicesStats: 'Internal Services Statistics',
      AppLanguageKeys.weekly: 'Weekly',
      AppLanguageKeys.internalServicesProfit: 'Profits from Internal Services',
      AppLanguageKeys.internalServicesRating: 'Rating for Internal Services',
      AppLanguageKeys.afterReceivingRequests: 'After Receiving Requests',
      AppLanguageKeys.jobName: 'Job Name',
      AppLanguageKeys.requestStatus: 'Request Status',
      AppLanguageKeys.underService: 'Under Service',
      AppLanguageKeys.requestDate: 'Request Date',
      AppLanguageKeys.servicePrice: 'Service Price',
      AppLanguageKeys.delivered: 'Delivered',
      AppLanguageKeys.requestRejected: 'Request Rejected',
      AppLanguageKeys.newRequest: 'New Request',

      AppLanguageKeys.addNewUser: 'Add New User',
      AppLanguageKeys.userPermissionsSettings: 'User Permissions Settings in the System',
      AppLanguageKeys.employeeName: 'Employee Name',
      AppLanguageKeys.jobTitle: 'Job Title',
      AppLanguageKeys.accountStatus: 'Account Status',
      AppLanguageKeys.active: 'Active',
      AppLanguageKeys.inactive: 'Inactive',
      AppLanguageKeys.picture: 'Picture',
      AppLanguageKeys.uploadPicture: 'Upload Picture',
      AppLanguageKeys.userPermissions: 'User Permissions',
      AppLanguageKeys.statistics: 'Statistics',
      AppLanguageKeys.servicesSettings: 'Services Settings',
      AppLanguageKeys.carModelSettings: 'Car Model Settings',
      AppLanguageKeys.accountManagement: 'Account Management',
      AppLanguageKeys.permissionsManagement: 'Permissions Management',
      AppLanguageKeys.organizationManagement: 'Organization Management',
      AppLanguageKeys.permissionsFromServices: 'Permissions from Services available to the user',
      AppLanguageKeys.maintenanceServices: 'Maintenance Services',

      AppLanguageKeys.nissanServiceSettings: 'Nissan Car Service Settings',
      AppLanguageKeys.serviceSettingsDetails: 'Service settings by type, prices, and shared packages',
      AppLanguageKeys.backToSettings: 'Back to Settings Page',
      AppLanguageKeys.internalServices: 'Internal Maintenance & Services',
      AppLanguageKeys.addServices: 'Add Services',
      AppLanguageKeys.mobileAndTransportServices: 'Mobile & Transport Services',
      AppLanguageKeys.carSpareParts: 'Car Spare Parts',
       AppLanguageKeys.serviceSettings: 'Service Settings',
      AppLanguageKeys.addInternalServices: 'Add Internal Maintenance & Services',
      AppLanguageKeys.allCategories: 'All Categories',
      AppLanguageKeys.unifiedPriceForAll: 'Unified Price for All Categories',
      AppLanguageKeys.pricePerCategory: 'Price per Category',
      AppLanguageKeys.sar: 'SAR',
      AppLanguageKeys.add: 'Add',
      AppLanguageKeys.carWash: 'Car Wash',
      AppLanguageKeys.battery: 'Battery',
      AppLanguageKeys.back: 'Back',
      AppLanguageKeys.save: 'Save',
      ////End////

      ////Change the glass////
      AppLanguageKeys.frontGlassReplacement: 'Front Glass Replacement',
      AppLanguageKeys.sideGlassReplacement: 'Side Glass Replacement',
      AppLanguageKeys.frontGlass: 'Front Glass',
      ////End////

      ////Change tires////
      AppLanguageKeys.tireBalancing: 'Tire Balancing',
      AppLanguageKeys.wheelAlignment: 'Wheel Alignment',
      ////End////

      ////Delivery laundry////
      AppLanguageKeys.goldPackage: 'Gold Package',
      AppLanguageKeys.interiorPolishing: 'Interior Car Polishing',
      AppLanguageKeys.sendRequest: 'Send Request',
      AppLanguageKeys.requestAccepted: 'Request Accepted',
      AppLanguageKeys.highwayServiceCompleted: 'Highway Service Completed',
      AppLanguageKeys.pleaseSelectCarLocation: 'Please select your car location',
      ////End////

      ////Car Batteries////
      AppLanguageKeys.glassReplacement: 'Glass Replacement',
      AppLanguageKeys.hour: 'Hour',
      AppLanguageKeys.viewReviews: 'View Reviews',
      AppLanguageKeys.newItem: 'New',
      AppLanguageKeys.selectServices: 'Select the services you need',
      ////End////

      ////Order list////
      AppLanguageKeys.createNewRequest: 'Create New Request',
      AppLanguageKeys.requestReceived: 'Request Received',
      AppLanguageKeys.onTheWayToYou: 'On the Way to You',
      AppLanguageKeys.cancelBooking: 'Cancel Booking',
      AppLanguageKeys.addYourComment: 'Add Your Comment',
      ////end////

      ////Request - Service////
      AppLanguageKeys.selectServiceType: 'Select Service Type',
      AppLanguageKeys.roadService: 'Roadside Service',
      AppLanguageKeys.serviceDetails: 'Service Details Needed',
      AppLanguageKeys.desiredServicePrice: 'Desired Service Price',
      AppLanguageKeys.serviceCompletionTime: 'When do you want the service completed?',
      AppLanguageKeys.selectCurrentLocation: 'Select Your Current Location',
      AppLanguageKeys.saturday: 'Saturday',
      AppLanguageKeys.sunday: 'Sunday',
      AppLanguageKeys.monday: 'Monday',
      AppLanguageKeys.tuesday: 'Tuesday',
      AppLanguageKeys.wednesday: 'Wednesday',
      AppLanguageKeys.thursday: 'Thursday',
      AppLanguageKeys.friday: 'Friday',
      AppLanguageKeys.enterYourData: 'Enter your data',
      AppLanguageKeys.waitingForOffers: 'Waiting to receive offers',
      AppLanguageKeys.serviceCenterOffers: 'Offers from Service Centers',
      AppLanguageKeys.mobileMaintenanceOffer: 'Mobile Maintenance',
      AppLanguageKeys.acceptOffer: 'Accept Offer',
      AppLanguageKeys.rejectRequest: 'Reject Request',
      AppLanguageKeys.withinOneDay: 'Within One Day',
      AppLanguageKeys.requestNumber: 'Request 44121',
      AppLanguageKeys.daysAgo: '2 days ago',
      AppLanguageKeys.expectedArrival: 'Expected Arrival',
      AppLanguageKeys.notes: 'Notes',
      AppLanguageKeys.contactMaintenanceRep: 'Contact Maintenance Rep',
      AppLanguageKeys.maintenanceRep: 'Maintenance Rep',
      AppLanguageKeys.trackTechnician: 'Track Technician',
       AppLanguageKeys.payBill: 'Pay Bill',
      AppLanguageKeys.brakeRepair: 'Brake System Repair (Brake Pads Replacement)',
      AppLanguageKeys.electricalRepair: 'Electrical Repair (Lights or Dashboard)',
      AppLanguageKeys.mobileService: 'Mobile Service',
      AppLanguageKeys.serviceRequest: 'Service Request',
      AppLanguageKeys.serviceProvidersArrival: 'Service Providers Arrival',
      AppLanguageKeys.serviceCompleted: 'Service Completed',
      AppLanguageKeys.serviceRating: 'Service Rating',
      ////End////

      ////Change Car////
      AppLanguageKeys.myCar: 'My Car',
      AppLanguageKeys.setAsPrimaryCar: 'Use Car as Primary Account',
      AppLanguageKeys.wifeCar: 'My Wife\'s Car',
      AppLanguageKeys.replaceCarAsAccount: 'Replace Car as Account',
      AppLanguageKeys.mySecondCar: 'My Second Car',
      AppLanguageKeys.carBills: 'Car Bills',
      AppLanguageKeys.carOwner: 'Car Owner',
      AppLanguageKeys.carChassisNumber: 'Chassis Number',
      AppLanguageKeys.carLicense: 'Car License',
      AppLanguageKeys.carFiles: 'Car Files',
      AppLanguageKeys.transferCar: 'Transfer to another user',
      AppLanguageKeys.deleteCar: 'Delete Car',
      ////END////

      ////Wallet- Bonus - Send code to friend////
      AppLanguageKeys.currentBalance: 'Current Balance',
      AppLanguageKeys.rechargeWallet: 'Recharge Wallet',
      AppLanguageKeys.walletTransactionDetails: 'Wallet Transaction Details',
      AppLanguageKeys.bonusBalance: 'Bonus Balance',
      AppLanguageKeys.payMaintenanceService: 'Pay Maintenance Service',
      AppLanguageKeys.rechargeFromVisa: 'Recharge from Visa No. 555',
      AppLanguageKeys.myPoints: 'My Points',
      AppLanguageKeys.pointsDetails: 'Points Details',
      AppLanguageKeys.bonusPoints: 'Bonus Points',
      AppLanguageKeys.redeemPointsService: 'Redeem Points for Service',
      AppLanguageKeys.rechargeFromVisaPoints: 'Recharge from Visa No. 555',
      AppLanguageKeys.inviteFriendText: 'Send the code to your friend and get 50 SAR on their first subscription',
      AppLanguageKeys.referralCode: 'Code',
      AppLanguageKeys.copyCode: 'Copy Code',
      AppLanguageKeys.shareLink: 'Share Link',
      AppLanguageKeys.codeCopiedSuccessfully: 'Code copied successfully!',

      ////End////

      ////Warranty////
      AppLanguageKeys.warrantyPeriod: 'For 5 years',
      AppLanguageKeys.warrantyServiceCenters: 'Benefit from warranty services through our authorized centers',
      AppLanguageKeys.warrantyCarsMarket: 'Car warranty for buying and selling in the car market',
      AppLanguageKeys.warrantyFreeMaintenance: 'Free maintenance services throughout the warranty period',
      AppLanguageKeys.warrantySubscription: 'Warranty Subscription',
      AppLanguageKeys.balanceChargedSuccessfully: 'Balance charged successfully',
      AppLanguageKeys.showServicesAtApprovedCenters: 'Show services at approved centers',

      ////End////

      ////Profile////
       AppLanguageKeys.newMessage: 'New Message',
      AppLanguageKeys.order255Expired: 'Order 255 Expired',
      AppLanguageKeys.privacyTitle: 'Privacy Policy',
      AppLanguageKeys.privacyIntro: '''
      At "Sun" app, we place the utmost importance on the privacy of our users and always strive to protect their personal data. 
      This policy explains how information is collected, used, and shared when you use our services.
      
      Information We Collect
      When using Sun App, we may collect some necessary information to provide the service, such as:
      - Full Name
      - Mobile Number
      - Email Address
      - Location (with your permission, to identify the car location)
      - Order history and payment records
      
      How We Use the Information
      We use the collected information to:
      - Provide maintenance services accurately and efficiently
      - Communicate with you regarding order status or special offers
      - Improve app performance and user experience
      - Ensure security and prevent unauthorized use
      
      Information Sharing
      We do not share your data with any third party outside the "Sun" app except in the following cases:
      - With authorized maintenance centers to fulfill your requests
      - With online payment gateways to complete transactions
      - When legally required or requested by authorities
      
      Data Protection
      We are committed to applying the highest security standards to protect your data and use advanced protection technologies to prevent unauthorized access.
      
      User Rights
      You have the right at any time to:
      - Request a copy of your personal data
      - Modify or update your data
      - Request to delete your account from the app
      
      Policy Changes
      We may update the privacy policy from time to time. You will be notified of any major changes via the app or email.
      
      Contact Us
      For any inquiries regarding the privacy policy, you can contact us via:
      📧 Email: privacy@sun-app.com
      📞 Support: 9200XXXXXX
      ''',
      AppLanguageKeys.username: 'Username',
      AppLanguageKeys.nationality: 'Nationality',
      AppLanguageKeys.language: 'Language',
      AppLanguageKeys.arabic: 'Arabic',
      AppLanguageKeys.english: 'English',
      AppLanguageKeys.yourCarAddress: 'Your Car Address',
      AppLanguageKeys.addAddress: 'Add Address',
      AppLanguageKeys.creditCards: 'Bank Credit Cards',
      AppLanguageKeys.cardName: 'Card Name',
      AppLanguageKeys.cardNumber: 'Card Number',
      AppLanguageKeys.cvv: '3-digit CVV',
      AppLanguageKeys.expiryDate: 'Expiry Date',
      AppLanguageKeys.addPaymentCard: 'Add Payment Card',
      AppLanguageKeys.financialTransactions: 'Financial Transactions',
       AppLanguageKeys.qrCode: 'QR Code',
      AppLanguageKeys.scanQrCode: 'Scan QR Code',
      ////End////

      ////InsuranceNew////
      AppLanguageKeys.selectInsuranceType: 'Please select your insurance type',
      AppLanguageKeys.integrativeInsurance: 'Integrative Insurance',
      AppLanguageKeys.sixMonthlyPayments: '6 Monthly Payments',
      AppLanguageKeys.twelveMonthlyPayments: '12 Monthly Payments',
      AppLanguageKeys.semiAnnual: 'Semi-Annual',
      AppLanguageKeys.annual: 'Annual',
      AppLanguageKeys.insuranceAccountRegistration: 'Insurance Account Registration',
      AppLanguageKeys.firstPayment: 'First Payment',

      ////End////

      ////Insurance////
      AppLanguageKeys.insuranceOffers: 'Insurance Offers (Nissan CVR)',
      AppLanguageKeys.comprehensiveInsurance: 'Comprehensive Insurance',
      AppLanguageKeys.thirdPartyInsurance: 'Third Party Insurance',
      AppLanguageKeys.bestOffer: 'Best Offer',
      AppLanguageKeys.scienceInsurance: 'Science Insurance',
      AppLanguageKeys.annualPayment: 'Annual Payment',
      AppLanguageKeys.cooperativeInsurance: 'Cooperative Car Insurance',
      AppLanguageKeys.enterPolicyData: 'Enter policy details to show due payments',
      AppLanguageKeys.policyNumber: 'Insurance Policy Number',
      AppLanguageKeys.identityVerification: 'Identity Verification',
      AppLanguageKeys.checkAbsherAccount: 'Check Absher Account',
      AppLanguageKeys.loginViaAbsher: 'Login via Absher Unified National Access',
      AppLanguageKeys.nationalIdOrIqama: 'National ID / Iqama Number',
      AppLanguageKeys.verifyAbsher: 'Verify Absher',
      AppLanguageKeys.yourInsuranceData: 'Your Insurance Data',
      AppLanguageKeys.beneficiaryName: 'Beneficiary Name',
      AppLanguageKeys.insurancePolicyNumber: 'Insurance Policy Number',
      AppLanguageKeys.nationalIdNumber: 'National ID Number',
      AppLanguageKeys.carPlateNumber: 'Car Plate Number',
      AppLanguageKeys.chassisNumber: 'Chassis Number',
      AppLanguageKeys.insuranceType: 'Insurance Type',
      AppLanguageKeys.insuranceValue: 'Insurance Value',
      AppLanguageKeys.installmentValue: 'Installment Value',
      AppLanguageKeys.linkInsuranceWithSanad: 'Link Insurance Account with SANAD',
      AppLanguageKeys.pleaseWait: 'Please wait',
      AppLanguageKeys.policyData: 'Policy Data',
      AppLanguageKeys.annualPayments: 'Annual Payments',
      AppLanguageKeys.firstInstallment: 'First Installment - 20/3',
      AppLanguageKeys.paid: 'Paid',
      AppLanguageKeys.details: 'Details',
      AppLanguageKeys.secondInstallment: 'Second Installment - 20/5',
      AppLanguageKeys.thirdInstallment: 'Third Installment - 20/3',
      AppLanguageKeys.payInstallment: 'Pay Installment',
      AppLanguageKeys.notPaid: 'Not Paid',
      AppLanguageKeys.fourthInstallment: 'Fourth Installment - 20/5',
      AppLanguageKeys.nextInstallmentJuly: 'Next Installment 7/20',
      AppLanguageKeys.nextInstallmentAugust: 'Next Installment 8/20',
      AppLanguageKeys.insuranceInstallment: 'Insurance Installment',
      AppLanguageKeys.total: 'Total',
      AppLanguageKeys.selectPaymentOptionFirst: 'Please select a payment option first',
      AppLanguageKeys.thirdInstallmentDetails: 'Third Installment Details 20/3',
      AppLanguageKeys.paidBy: 'Paid by',
      AppLanguageKeys.companyEmlopyeeLogin:'Company employee login'

      ////End////







    }
  };



  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String translate(String key) {
    return _localizedValues[locale.languageCode]![key] ?? key;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLocales.contains(locale);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}