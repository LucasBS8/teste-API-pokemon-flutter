import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:testeapi/models/post.dart';

class PokemonService {
  Future<List<Pokemon>> fetchPokemons() async {
    final String response =
        await rootBundle.loadString('assets/json/pokemon.json');
    List jsonResponse = jsonDecode(response);
    return jsonResponse.map((json) => Pokemon.fromJson(json)).toList();
  }
}
