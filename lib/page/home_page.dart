import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Basic UI")),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/ContainerWidget");
              }, child: Text("Container")),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/StackWidget");
              }, child: Text("Stack and Positioned")),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/ButtonWidget");
              }, child: Text("Button")),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/GridPokemon");
              }, child: Text("GridPokemon")),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/UserList");
              }, child: Text("UserList")),
            ],
          ),
        ),
      ),
    );
  }
}