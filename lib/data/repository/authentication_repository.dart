import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/login/login.dart';
import 'package:proyecto_mathiaz/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance=>Get.find();
final storage =GetStorage();
  @override
  void   onReady(){
    screenRedirect();
  }
  void screenRedirect(){
      storage.writeIfNull('es tu primera vez en este app??', true);
      storage.read('es tu primera vez en este app??')!=true ? Get.to(()=>LoginScreen()): Get.to(()=>OnboardingScreen());
  }
}