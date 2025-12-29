
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/forget_password/model/forget_password_model.dart';
import '../../features/auth/forget_password/new_password_screen.dart';
import '../../features/auth/login/model/create_user_model.dart';
import '../../features/auth/login/model/log_in_model.dart';
import '../../features/auth/login/ui/details_login_screen.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/login/widgets/class_of_dialog_for_login_signup.dart';
import '../../features/auth/otp/ui/otp_screen.dart';
import '../../features/auth/sign_up/model/sign-up_model.dart';
import '../../features/welcome/ui/welcome_select_car_screen.dart';
import '../api/dio_function/dio_controller.dart';
import '../api/dio_function/failures.dart';
import '../constants.dart';
import '../pages_widgets/alert_dialog_widget_for_dismiss.dart';
import '../pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../pages_widgets/general_widgets/snakbar.dart';
import '../utilies/map_of_all_app.dart';
import 'app_states.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int selectedType = 0;
  String phone = '';

  void changeSelectedType(int newType) {
    selectedType = newType;
    emit(ChangeSelectedTypeState());
  }

  void changeSecure(){
    emit(ChangeSecureState());
  }


  List<LogInModel> userData = [];


  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeCurrentIndexState());
  }






  Future<void> signUpFunction({required SignUpModel newCustomer , required BuildContext context}) async {
    emit(LoadingInRegisterCustomerFunctionState());
    try {

      String jsonString = json.encode(newCustomer);

      Map<String, dynamic> queryParams = {};

      await  Network.getDataWithBodyAndQuery (jsonString, queryParams , registerUrl).then((value) async {
        if(value.data == AppStatesApi.phoneExist){
          AppSnackBar.showError(AppStatesApi.error);
        }
        else{
          AppSnackBar.showSuccess(AppStatesApi.success);
          Navigator.of(context).pushReplacement(NavigateToPageWidget(const OtpScreen()),);

        }
        emit(FinishRegisterCustomerFunctionState());
      });
    } catch (e) {
      AppSnackBar.showError(e is DioException ? responseOfStatusCode(e.response?.statusCode) : e.toString());
      emit(FinishRegisterCustomerFunctionState());

    }
  }




  //function login

  Future<void> loginFunction({required LogInModel newCustomer , required BuildContext context}) async {
    emit(LoadingInLoginFunctionState());
    String jsonString = json.encode(newCustomer);

    try {
      Map<String, dynamic> queryParams = {
      };
      await  Network.getDataWithBodyAndQuery (jsonString, queryParams , loginUrl).then((value) async {
        if(value.data == AppStatesApi.notFound){
          AppSnackBar.showError(AppStatesApi.notFound);
        }
        else if(value.data == AppStatesApi.wrongPassword){
          AppSnackBar.showError(AppStatesApi.wrongPassword);
        }
        else{
          AppSnackBar.showSuccess(AppStatesApi.success);
          Navigator.of(context).push(NavigateToPageWidget(const WelcomeSelectCarScreen()),);


        }
        emit(FinishLoginFunctionState());
      });
    }
    catch (e) {
      AppSnackBar.showError(e is DioException ? (e.response?.data.toString() ?? AppStatesApi.error) : e.toString(),);
      emit(FinishLoginFunctionState());
  }

}


//function check in account
Future<void> checkInAccountFunction({required String phone, required BuildContext context}) async {
  emit(LoadingInCheckInAccountFunctionState());
  this.phone = phone;
  var checkInAccount = ForgetPasswordModel(
    Phone: phone,
    Type: selectedType,
    NewPassword: "",
  );
  var jsonData = checkInAccount.toJson();

  try {
    Map<String, dynamic> queryParams = {
    };
    await Network.getDataWithBodyAndQuery(
        jsonData , queryParams, checkInAccountUrl).then((value) async {
      if (value.data == false) {
        AppSnackBar.showError(AppStatesApi.notFound);
      }
      else {
        AppSnackBar.showSuccess(AppStatesApi.success);
        Navigator.of(context).push(
          NavigateToPageWidget(const NewPasswordScreen()),);
      }
      emit(FinishCheckInAccountFunctionState());
    });
  }
  catch (e) {
    AppSnackBar.showError(
      e is DioException ? (e.response?.data.toString() ?? AppStatesApi.error) : e.toString(),);
    emit(FinishCheckInAccountFunctionState());
  }
}


//function forget password
  Future<void> forgetPasswordFunction({required String newPassword , required BuildContext context}) async {
    emit(LoadingInForgetPasswordFunctionState());
    var changePassword = ForgetPasswordModel(
      Phone: phone,
      Type: selectedType,
      NewPassword: newPassword,
    );
    var jsonData = changePassword.toJson();
    print("Sending forget password data: $jsonData");
    try {
      Map<String, dynamic> queryParams = {};
      await Network.getDataWithBodyAndQuery(jsonData, queryParams, forgetPasswordUrl).then((value) async {
        if (value.data == AppStatesApi.notFound) {
          AppSnackBar.showError(AppStatesApi.notFound);
        } else {
          AppSnackBar.showSuccess(AppStatesApi.success);
          Navigator.of(context).push(
            NavigateToPageWidget(const OtpScreen()),);
        }

        emit(FinishForgetPasswordFunctionState());
      });
    } catch (e) {
      AppSnackBar.showError(
        e is DioException ? (e.response?.data.toString() ?? AppStatesApi.error) : e.toString(),
      );
      emit(FinishForgetPasswordFunctionState());
    }
  }

}