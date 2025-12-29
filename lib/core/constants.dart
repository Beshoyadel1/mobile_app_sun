class AppConstants {
  static LoginType? currentLoginType;
  static bool get isIndividual => currentLoginType == LoginType.individual;
  static bool get isCompany => currentLoginType == LoginType.company;
}

enum LoginType { individual, company }


class AppImages{
  static const appLogo = 'assets/login/appLogo.png';

}

class AppFonts{
  static const String lamaSansFontFamily = 'LamaSans';
}

Map<String, String> myHeaders = {
  'Content-Type': 'application/json',
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'X-Requested-With',
};



const String apiBaseUrl ="http://192.168.1.4:804/UserInfo/";
String registerUrl = "register";
String loginUrl = "login";
String checkInAccountUrl= "checkinphone";
String forgetPasswordUrl = "forgetpassword";

