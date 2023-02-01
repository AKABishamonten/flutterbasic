import 'dart:convert';

import 'package:flutter/material.dart';

List<PokemonModel> pokemonModelFromJson(String str) => List<PokemonModel>.from(json.decode(str).map((x) => PokemonModel.fromJson(x)));

String pokemonModelToJson(List<PokemonModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PokemonModel {
    PokemonModel({
        required this.id,
        required this.num,
        required this.name,
        required this.img,
        required this.type,
    });

    int id;
    String num;
    String name;
    String img;
    List<String> type;


  Color? get baseColor => _color(type: type[0]);

    factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: json["type"] == null ? [] : List<String>.from(json["type"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": type == null ? [] : List<dynamic>.from(type.map((x) => x)),
    };

    static Color? _color({required String type}) {
      switch (type) {
        case 'Normal' : return Colors.grey;
        case 'Fire' : return Colors.red;
        case 'Water' : return Colors.blue;
        case 'Grass' : return Colors.green[400];
        case 'Electric' : return Colors.amber[400];
        case 'Poison' : return Colors.purple;
        case 'Ice' : return Colors.cyanAccent[400];
        case 'Flying' : return Colors.indigo[200];
        case 'Fighting' : return const Color.fromARGB(255, 193, 116, 0);
        case 'Phychic' : return Colors.pink;
        case 'Bug' : return Colors.lightGreen[500];
        case 'Rock' : return const Color.fromARGB(255, 153, 113, 64);
        case 'Ground' : return const Color.fromARGB(255, 131, 79, 2);
        case 'Ghost' : return Colors.indigo[400];
        case 'Dark' : return Colors.brown;
        case 'Dragon' : return Colors.indigo;
        case 'Steel' : return Colors.blueGrey;
        case 'Fairy' : return Colors.pinkAccent[100];
        default: return Colors.grey;
      }
    } 
}
