import 'package:flutter/material.dart';
import 'package:flutterbasic/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class PostUser extends StatefulWidget {
  const PostUser({super.key});

  @override
  State<PostUser> createState() => _PostUserState();
}

class _PostUserState extends State<PostUser> {
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(title: Text('Add User')),
    );
  }
}