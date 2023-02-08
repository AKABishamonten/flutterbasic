import 'package:flutter/material.dart';
import 'package:flutterbasic/models/pokemon_model.dart';
import 'package:flutterbasic/view_model/pokemon_view_model.dart';
import 'package:provider/provider.dart';

class GridPokemon extends StatefulWidget {
  const GridPokemon({super.key});

  @override
  State<GridPokemon> createState() => _GridPokemonState();
}

class _GridPokemonState extends State<GridPokemon> {
  @override
  Widget build(BuildContext context) {
    PokemonViewModel pokemonViewModel = context.watch<PokemonViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('GridList'),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.black,),),
        )],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
        ),
        itemCount: pokemonViewModel.pokemonModel.length,
        itemBuilder: (context, index) {
          PokemonModel pokemonModel = pokemonViewModel.pokemonModel[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: pokemonModel.baseColor,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: 
                      Text(pokemonModel.name, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                  ),
                  Positioned(
                    top: 45,
                    left: 20,
                    child: 
                      Text(pokemonModel.type.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),
                      ),
                  ),
                  Positioned(bottom: 5,right: 5,child: Image.network(pokemonModel.img,height: 100, width: 100, fit: BoxFit.cover),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
