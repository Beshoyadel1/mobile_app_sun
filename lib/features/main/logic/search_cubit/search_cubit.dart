import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/AppDataList.dart';
import '../../../../core/language/language.dart';
import '../../models/search_result_model.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final BuildContext context;
  SearchCubit(this.context) : super(SearchInitial());

  void search(String query) {
    if (query.isEmpty) {
      emit(SearchEmpty());
      return;
    }

    List<SearchResultModel> temp = [];

    //Services
    for (var s in AppData.services) {
      final localizedTitle = AppLocalizations.of(context)!.translate(s.title);
      if (localizedTitle.contains(query)) {
        temp.add(SearchResultModel(
          category: 'خدمة',
          title: localizedTitle,
          image: s.image,
        ));
      }
    }

    //  Service Centers
    for (var c in AppData.carServiceCenterData) {
      if (c.title.contains(query)) {
        temp.add(SearchResultModel(
          category: 'مراكز الخدمة',
          title: c.title,
          description: c.description,
          image: c.image,
        ));
      }
    }

    //  Spare Parts
    for (var sp in AppData.spareParts) {
      if (sp.partName.contains(query)) {
        temp.add(SearchResultModel(
          category: 'قطع غيار',
          title: sp.partName,
          description: sp.description,
          price: sp.price,
          image: sp.image,
        ));
      }
    }

    //  Cars
    for (var car in AppData.cars) {
      if (car.description.contains(query)) {
        temp.add(SearchResultModel(
          category: 'حراج سيارات',
          title: car.description,
          price: car.price,
          location: car.location,
          image: car.image,
        ));
      }
    }

    //  Car News
    for (var n in AppData.carNewsData) {
      if (n.title.contains(query)) {
        temp.add(SearchResultModel(
          category: 'أخبار السيارات',
          title: n.title,
          description: n.description,
          image: n.image,
        ));
      }
    }

    if (temp.isEmpty) {
      emit(SearchEmpty());
    } else {
      emit(SearchLoaded(temp));
    }
  }
}
