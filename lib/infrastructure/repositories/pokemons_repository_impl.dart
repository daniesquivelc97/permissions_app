import 'package:permissions_app/domain/domain.dart';
import 'package:permissions_app/infrastructure/datasources/pokemons_datasources_impl.dart';

class PokemonsRepositoryImpl implements PokemonRepository {
  final PokemonsDatasource datasource;
  PokemonsRepositoryImpl({PokemonsDatasource? datasource})
      : datasource = datasource ?? PokemonsDatasourceImpl();

  @override
  Future<(Pokemon?, String)> getPokemon(String id) {
    return datasource.getPokemon(id);
  }
}
