import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permissions_app/domain/domain.dart';
import 'package:permissions_app/infrastructure/repositories/pokemons_repository_impl.dart';

final pokemonReposirotyProvider = Provider<PokemonRepository>((ref) {
  return PokemonsRepositoryImpl();
});

final pokemonProvider = FutureProvider.family<Pokemon, String>((ref, id) async {
  final pokemonRepository = ref.watch(pokemonReposirotyProvider);
  final (pokemon, error) = await pokemonRepository.getPokemon(id);
  if (pokemon != null) return pokemon;
  throw error;
});
