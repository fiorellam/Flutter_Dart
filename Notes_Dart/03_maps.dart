void main() {
  //Map es {} son pares de valores key y values, tmb son objetos
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto', 
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
    
    };
  
  final Map<int, String> pokemons = {
    1: 'ABC',
    2: 'XYZ',
    3: '123',
    150: 'AGJH'
  };
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites ${pokemon['sprites']}');

  //Esto es raro que lo veamos, generalmente se hace un mapeo para usar 
  //pokemon.sprites.back o pokemon.sprites.front
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
  print('Pokemons ${pokemons}');
}

