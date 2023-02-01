import 'package:flutter/material.dart';
import 'package:flutterbasic/view_model/api_status.dart';
import 'package:flutterbasic/models/pokemon_model.dart';
import 'package:flutterbasic/service/service.dart';

class PokemonViewModel extends ChangeNotifier{
  List<PokemonModel> _pokemonModel = [];

  List<PokemonModel> get pokemonModel => _pokemonModel;

  setPokemonModel(List<PokemonModel> pokemonModel){
    _pokemonModel = pokemonModel;
    notifyListeners();
  }

  PokemonViewModel() {
    getPokemonList();
  }

  getPokemonList() async {
    final response = await PokemonService.getPokemonList();
    if(response is Success){
      setPokemonModel(response.response as List<PokemonModel>);
    }else{
      print("Failure Response");
    }
  }
}