import 'package:permissions_app/domain/domain.dart';

import '../models/pokeapi_pokemon_response.dart';

class PokemonMapper {
  static Pokemon pokeApiPokemonToEntity(Map<String, dynamic> json) {
    final pokeApiPokemon = PokeApiPokemonResponse.fromJson(json);

    return Pokemon(
        id: pokeApiPokemon.id,
        name: pokeApiPokemon.name,
        spriteFront: pokeApiPokemon.sprites.frontDefault);
  }
}
