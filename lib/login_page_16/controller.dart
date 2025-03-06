

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:login_page_16/login_page_16/Api_all.dart';

class DataController{
  static Future<bool> niceData({required String mail, required String password }) async{
    try{
      Uri url = Uri.parse(AllApi.login);
      var body = {"email_phone": "$mail",
      "password" : "$password"};
      var response = await http.post(url, body: body,);
      if(response.statusCode == 200){
        EasyLoading.showSuccess("login succesful");
        return true;
      }else{
        EasyLoading.showError("Invalid user");
        return false;
      }

      
      
      
    }catch (e){log("===========Login eror : $e");}
    EasyLoading.dismiss();
    return false;
    
  }
 }