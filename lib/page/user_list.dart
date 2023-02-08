
import 'package:flutter/material.dart';
import 'package:flutterbasic/models/user_model.dart';
import 'package:flutterbasic/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}): super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('UserList')
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, "/AddUser");
        }, 
        label: Text('Add User')
      ),
      body: ListView.builder(
        itemCount: userViewModel.userModel.length,
        itemBuilder: (context, index){
          UserModel userModel = userViewModel.userModel[index];
          return Card(
            child: Column(
              children: [
                Text(userModel.firstname)
              ],
            ),
          );
        }
      ),
    );
    
  }
}