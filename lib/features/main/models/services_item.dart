
import 'package:sun_system_app/core/theming/assets.dart';

class ServiceItem {
  final String name;
  final double price;
  final bool isChecked;
  final String image;


  ServiceItem({
    required this.name,
    required this.price,
    this.isChecked = false,
   required this.image,

  });
}

final List<ServiceItem> services = [
  ServiceItem(name: 'سمكرة', price: 450.00, isChecked: true,image:AppImageKeys.fileIcon,),
  ServiceItem(name: 'كهرباء', price: 300.00, isChecked: false,image:AppImageKeys.fileIcon),
  ServiceItem(name: 'ميكانيكي', price: 150.00, isChecked: true,image:AppImageKeys.fileIcon),
  ServiceItem(name: 'رديترات ', price: 300.00, isChecked: false,image:AppImageKeys.fileIcon),
  ServiceItem(name: 'عوادم', price: 300.00, isChecked: false,image:AppImageKeys.fileIcon),
  ServiceItem(name: 'تكييف وفوربون', price: 300.00, isChecked: false,image:AppImageKeys.fileIcon),
];



final List<ServiceItem> specificServices = [
  ServiceItem(name: 'تغيير زيوت تشحيم', price: 450.00, isChecked: true,image: AppImageKeys.changeOilsService),
  ServiceItem(name: 'تغيير زيوت فلاتر', price: 300.00, isChecked: false,image: AppImageKeys.changeOilsService),
];




class PackageItem {
  final String name;

  PackageItem({
    required this.name,
  });
}


final List<PackageItem> packages = [
  PackageItem(name: 'باقه بريميم'),
  PackageItem(name: 'باقة جولد'),

];