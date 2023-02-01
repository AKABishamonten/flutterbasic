import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: () {}, icon: Text('ElevatedButton'), label: Icon(Icons.settings)),
            OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.settings, color: Colors.black), label: Text('OutlinedButton')),
            TextButton.icon(onPressed: () {}, icon: Icon(Icons.settings, color: Colors.black), label: Text('TextButton')),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: Colors.black))
          ],
        ),
      ),
    );
  }
}
