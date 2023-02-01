import 'dart:convert';

import 'package:flutterbasic/models/user_model.dart';
import 'package:flutterbasic/view_model/api_status.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<Object> getUserList() async {
    try{
      final url = Uri.parse('https://raw.githubusercontent.com/AKABishamonten/login/main/testapi.json');
      final response = await http.get(url);
      if(response.statusCode == 200){
       return Success(code: 200, response: userFromJson(response.body));
      }else{  
       return Failure(code: 100, errorResponse: "Invalide Response");
      }
    }catch(e){
      return Failure(code: 101, errorResponse: "Unknow Error");
    }
  }
}
