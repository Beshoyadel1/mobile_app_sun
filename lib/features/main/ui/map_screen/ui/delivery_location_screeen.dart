import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:sun_system_app/features/welcome/widgets/appbar_profile.dart';

import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../welcome/logic/location_cubit/location_cubit.dart';
import '../../../logic/service_center_details_cubit/service_center_details_cubit.dart';
import '../../services_screen/ui/contact_highway_center_screen/widgets/delivery_communication.dart';

class DeliveryLocationScreen extends StatefulWidget {
  const DeliveryLocationScreen({super.key});

  @override
  State<DeliveryLocationScreen> createState() => _DeliveryLocationScreenState();
}

class _DeliveryLocationScreenState extends State<DeliveryLocationScreen> {
  final MapController mapController = MapController();
  final LatLng start = LatLng(37.7749, -122.4194);
  final LatLng destination = LatLng(37.8044, -122.2711);
  List<LatLng> routePoints = [];
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    routePoints = [
      start,
      LatLng(37.7790, -122.4000),
      LatLng(37.7900, -122.3900),
      LatLng(37.8000, -122.3100),
      destination,
    ];
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bounds = LatLngBounds.fromPoints(routePoints);
      mapController.fitCamera(
        CameraFit.bounds(bounds: bounds, padding: const EdgeInsets.all(50)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ FlutterMap(
          mapController: mapController,
          options: MapOptions(initialCenter: start, initialZoom: 12,),
          children: [
            TileLayer(urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', userAgentPackageName: 'com.example.smat_admin',),
            PolylineLayer(
              polylines: [
                Polyline(points: routePoints.sublist(0, routePoints.length ~/ 4), color: AppColors.veryLightOrangeColor, strokeWidth: 4,),
                Polyline(points: routePoints.sublist(routePoints.length ~/ 4 - 1, routePoints.length ~/ 2), color: AppColors.lightOrangeColor, strokeWidth: 4,),
                Polyline(points: routePoints.sublist(routePoints.length ~/ 2 - 1, (routePoints.length * 3) ~/ 4), color: AppColors.orangeColor, strokeWidth: 4,),
                Polyline(points: routePoints.sublist((routePoints.length * 3) ~/ 4 - 1, routePoints.length), color: AppColors.orangeColor, strokeWidth: 4,),
              ],
            ),

            Stack(
                children:[
                  CircleLayer(
                    circles: [
                      CircleMarker(point: start, color: AppColors.lightOrangeColor.withAlpha(60), borderStrokeWidth: 2, borderColor: AppColors.veryLightOrangeColor, useRadiusInMeter: true, radius: 1500,),],
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(width: 60.0, height: 60.0, point: start,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(width: 10, height: 10, decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.whiteColor, border: Border.all(color: AppColors.veryLightOrangeColor, width: 2),),
                            ),
                          ],
                        ),
                      ),
                      Marker(width: 25.0, height: 25.0,
                        point: LatLng(start.latitude - 0.0064,start.longitude),
                        child: Image.asset(AppImageKeys.carLocation, width: 32, height: 19),
                      ),

                      Marker(width: 50, height: 50,
                        point: destination,
                        child: CircleAvatar(radius: 20,
                          backgroundColor: AppColors.redColor,
                          child: const Icon(Icons.location_on_outlined, color: AppColors.whiteColor, size: 25,),
                        ),
                      ),
                    ],
                  ),]),
              ],
            ),
          AppConstants.isIndividual?    Positioned(
            top: 136, left: 46, right: 46,
            child: TextFormFieldWidget(

              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              isColumn: false,
              textFormController: searchController,
              textSize: 14,
              textColor: AppColors.darkGreyColor,
              hintText: "بحث اسم منطقة او موقع",
              fillColor: AppColors.whiteColor,
              borderColor: AppColors.lightGreyColor,
              fontWeightIndex: FontSelectionData.semiBoldFontFamily,
              isValidator: true,
              onChanged: (val) => context.read<LocationCubit>().searchLocation(val),
            ),
          ):const SizedBox(),
          Positioned(bottom: 56, left: 16, right: 16, child:DeliveryCommunication(showTitle: false)),
          Positioned(top: 0, left: 16, right: 16, child: AppbarProfile(image: AppImageKeys.notification, title: '', showDefaultProfileImage: true,showBackButton:AppConstants.isIndividual?false:true,
              ),)],
      ),

    );
  }
}
