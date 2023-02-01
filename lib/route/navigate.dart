import 'package:flutter/material.dart';
import 'package:flutterbasic/page/api_fuction.dart';
import 'package:flutterbasic/page/button.dart';
import 'package:flutterbasic/page/container.dart';
import 'package:flutterbasic/page/grid_pokedex.dart';
import 'package:flutterbasic/page/home_page.dart';
import 'package:flutterbasic/page/post_user.dart';
import 'package:flutterbasic/page/stack.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/ButtonWidget': (BuildContext context) => ButtonWidget(),
    '/ContainerWidget': (BuildContext context) => ContainerWidget(),
    '/GridPokemon': (BuildContext context) => GridPokemon(),
    '/HomePage': (BuildContext context) => HomePage(),
    '/StackWidget': (BuildContext context) => StackWidget(),
    '/ApiFuction': (BuildContext context) => ApiFuction(),
    '/PostUser': (BuildContext context) => PostUser(),
  };
}