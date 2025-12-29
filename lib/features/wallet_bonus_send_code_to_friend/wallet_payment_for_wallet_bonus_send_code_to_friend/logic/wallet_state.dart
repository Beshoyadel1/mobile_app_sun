class WalletState {
  final String balance;
  final String rechargeAmount;

  WalletState({required this.balance, required this.rechargeAmount});

  WalletState copyWith({String? balance, String? rechargeAmount}) {
    return WalletState(
      balance: balance ?? this.balance,
      rechargeAmount: rechargeAmount ?? this.rechargeAmount,
    );
  }
}
