import 'package:flutter/material.dart';
import 'package:flutterbasic/page/button.dart';
import 'package:flutterbasic/page/container.dart';
import 'package:flutterbasic/page/grid_pokedex.dart';
import 'package:flutterbasic/page/home_page.dart';
import 'package:flutterbasic/page/stack.dart';
import 'package:flutterbasic/page/user_list.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/ButtonWidget': (BuildContext context) => const ButtonWidget(),
    '/ContainerWidget': (BuildContext context) => const ContainerWidget(),
    '/GridPokemon': (BuildContext context) => const GridPokemon(),
    '/HomePage': (BuildContext context) => const HomePage(),
    '/StackWidget': (BuildContext context) => const StackWidget(),
    '/UserList': (BuildContext context) => const UserList(),
  };
}