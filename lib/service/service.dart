import 'package:flutterbasic/view_model/api_status.dart';
import 'package:http/http.dart' as http;
import 'package:flutterbasic/models/pokemon_model.dart';

class PokemonService {
  static Future<Object> getPokemonList() async {
    try{
      final url = Uri.parse('https://raw.githubusercontent.com/AKABishamonten/login/main/pokemonapi.json');
      final response = await http.get(url);
      if(response.statusCode == 200){
       return Success(code: 200, response: pokemonModelFromJson(response.body));
      }else{  
       return Failure(code: 100, errorResponse: "Invalide Response");
      }
    }catch(e){
      return Failure(code: 101, errorResponse: "Unknow Error");
    }
  }
}