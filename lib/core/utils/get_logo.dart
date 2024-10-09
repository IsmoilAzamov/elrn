
import '../../main.dart';

String  getLogo(){
  try{
    bool isDark = box.get('theme') == "dark";
    if(isDark){
      return 'assets/images/elrn_logo.png';
    } else{
      return 'assets/images/elrn_logo_blue.png';
    }
  }  catch (e){
    return 'assets/images/elrn_logo.png';
  }
}