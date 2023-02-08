import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterbasic/models/user_model.dart';
import 'package:flutterbasic/view_model/api_status.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<Object> getUserList() async {
    try{
      final url = Uri.parse('https://raw.githubusercontent.com/AKABishamonten/login/main/userapi.json');
      http.Response response = await http.get(url);
      if(response.statusCode == 200){
       return Success(code: 200, response: userModelFromJson(response.body));
      }else{  
       return Failure(code: 100, errorResponse: "Invalide Response");
      }
    }catch(e){
      return Failure(code: 101, errorResponse: "Unknow Error");
    }
  }
}

