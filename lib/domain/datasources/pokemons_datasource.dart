import 'package:permissions_app/domain/domain.dart';

abstract class PokemonsDatasource {
  Future<(Pokemon?, String)> getPokemon(String id);
}
