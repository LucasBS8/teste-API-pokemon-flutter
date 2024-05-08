import 'package:flutter/material.dart';
import 'package:testeapi/models/post.dart';
import 'package:testeapi/services/post_api.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokédex'),
        ),
        body: FutureBuilder<List<Pokemon>>(
          future: PokemonService().fetchPokemons(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Erro: ${snapshot.error}');
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Pokemon pokemon = snapshot.data![index];
                  return ListTile(
                    leading: Image.asset(pokemon.imagem),
                    title: Text(pokemon.nome),
                    subtitle: Text(pokemon.tipo),
                  );
                },
              );
            }
          },
        ),
      );
  }
}