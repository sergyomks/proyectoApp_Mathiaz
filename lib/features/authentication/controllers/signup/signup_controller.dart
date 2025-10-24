import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();
final signUpFormKey=GlobalKey<FormState>();
  Future<void> registerUser()async{
  try{
    if(!signUpFormKey.currentState!.validate()){
      return;
    }
  }catch(e){

  }
  }
}