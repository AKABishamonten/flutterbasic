import 'package:flutter/material.dart';
import 'package:flutterbasic/models/user_model.dart';
import 'package:flutterbasic/service/user_service.dart';
import 'package:flutterbasic/view_model/api_status.dart';

class UserViewModel extends ChangeNotifier{
  List<UserModel> _userModel = [];

  List<UserModel> get userModel => _userModel;

  setUserModel(List<UserModel> userModel){
    _userModel = userModel;
    notifyListeners();
  }

  UserViewModel() {
    getUserList();
  }

  getUserList() async {
    final response = await UserService.getUserList();
    if(response is Success){
      setUserModel(response.response as List<UserModel>);
      notifyListeners();
    }else{
      print("Failure Response");
    }
  }

}