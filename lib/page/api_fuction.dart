import 'package:flutter/material.dart';
import 'package:flutterbasic/models/user_model.dart';
import 'package:flutterbasic/service/respository.dart';
import 'package:flutterbasic/view_model/user_view_model.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class ApiFuction extends StatefulWidget {
  const ApiFuction({super.key});

  @override
  State<ApiFuction> createState() => _ApiFuctionState();
}

class _ApiFuctionState extends State<ApiFuction> {
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("ApiFuction"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "/PostUser");
        },
        child: Icon(Icons.add_card),
      ),
      body: ListView.builder(
        itemCount: userViewModel.user.length,
        itemBuilder: (context, index) {
          User user = userViewModel.user[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${user.firstName} ${user.lastName}'),
                    SizedBox(height: 10,),
                    Text(user.message),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}