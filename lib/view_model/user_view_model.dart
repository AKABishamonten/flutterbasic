import 'package:flutter/material.dart';
import 'package:flutterbasic/models/user_model.dart';
import 'package:flutterbasic/service/respository.dart';
import 'package:flutterbasic/view_model/api_status.dart';

class UserViewModel extends ChangeNotifier{
  List<User> _user = [];

  List<User> get user => _user;

  setUserModel(List<User> user){
    _user = user;
    notifyListeners();
  }

  UserViewModel() {
    getUserList();
  }

  getUserList() async {
    final response = await UserService.getUserList();
    if(response is Success){
      setUserModel(response.response as List<User>);
    }else{
      print("Failure Response");
    }
  }

  deleteUser() async {

  }
}