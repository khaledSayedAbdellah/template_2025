import 'package:flutter/material.dart';


class Validator{
  static String? validatePassword(String? password) {
    var passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if(password!=null && password.length>=8 && passwordRegExp.hasMatch(password)){
      return null;
    }else{
      return "";
    }
  }
  static String? validateConfPassword({required String newPassword, required String confPassword}) {
    if(newPassword.characters==confPassword.characters){
      return null;
    }else{
      return "";
    }
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) return "";
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',);
    if (!emailRegex.hasMatch(email)) return "";
    return null;
  }

  static String? validateNormalString(String? text) {
    if (text?.isEmpty ?? true) return "";
    return null;
  }

  static String? validateDropDown(dynamic value) {
    return value == null?"":null;
  }
}