import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/logic/copy_state.dart';


class CopyCubit extends Cubit<CopyState> {
  CopyCubit() : super(CopyState(copied: false));

  void copyCode(String code, BuildContext context) {
    Clipboard.setData(ClipboardData(text: code));
    emit(CopyState(copied: true));
  }

  void reset() {
    emit(CopyState(copied: false));
  }
}
