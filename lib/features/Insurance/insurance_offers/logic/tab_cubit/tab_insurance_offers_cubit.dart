import 'package:flutter_bloc/flutter_bloc.dart';
import 'tab_insurance_offers_state.dart';

class TabInsuranceOffersCubit extends Cubit<TabInsuranceOffersState> {
  TabInsuranceOffersCubit() : super(TabInsuranceInitialState());

  static TabInsuranceOffersCubit get(context) => BlocProvider.of<TabInsuranceOffersCubit>(context);

  int currentIndex = 0;

  void changeTab(int index) {
    currentIndex = index;
    emit(TabInsuranceChangedState(index));
  }
}
