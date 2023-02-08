import 'package:flutter/material.dart';
import 'package:flutterbasic/page/home_page.dart';
import 'package:flutterbasic/route/navigate.dart';
import 'package:flutterbasic/view_model/pokemon_view_model.dart';
import 'package:flutterbasic/view_model/user_view_model.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
   ChangeNotifierProvider<PokemonViewModel>(create: (_) => PokemonViewModel(),),
   ChangeNotifierProvider<UserViewModel>(create: (_) => UserViewModel(),),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: Navigate.routes,
    );
  }
}
