
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

String getLangCode(){
  try{
    BuildContext context= navigatorKey.currentContext!;
    String langCode="";
    // print(context.locale);
    switch(context.locale.toString()){
      case "uz_Latn_UZ":
        langCode="uz-latn";
        break;
      case "uz_Cyrl_UZ":
        langCode="uz-cyrl";
        break;
      case "ru_RU":
        langCode="ru";
        break;
      case "kk_Cyrl_UZ":
        langCode="qr";
        break;
      default:
        langCode="uz-Latn";
        break;
    }
    return langCode;
  } on Error {
    // print(e);
    // print(e.stackTrace);
    return "uz";

  }
}