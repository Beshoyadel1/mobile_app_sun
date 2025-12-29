import 'package:flutter_bloc/flutter_bloc.dart';
import 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(WalletState(balance: "0.0", rechargeAmount: "0.0"));

  void updateRechargeAmount(String amount) {
    emit(state.copyWith(rechargeAmount: amount));
  }

  void addRechargeToBalance() {
    final current = double.tryParse(state.balance) ?? 0.0;
    final entered = double.tryParse(state.rechargeAmount) ?? 0.0;
    final newBalance = current + entered;

    emit(WalletState(balance: newBalance.toString(), rechargeAmount: "0.0"));
  }
}

final walletCubit = WalletCubit();
