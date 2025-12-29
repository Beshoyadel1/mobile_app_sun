import 'package:flutter_bloc/flutter_bloc.dart';

part 'car_owner_transfer_state.dart';

class CarOwnerTransferCubit extends Cubit<CarOwnerTransferState> {
  CarOwnerTransferCubit() : super(CarOwnerTransferInitial());

  Future<void> startTransfer() async {
    emit(CarOwnerTransferLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(CarOwnerTransferSuccess());
  }
}
