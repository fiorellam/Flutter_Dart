//Constructores con nombre es la posibilidad de tener multiples constructores en nuestra clase

void main() {
 
  final Map<String, dynamic> rawJson ={
    'name': 'Spiderman',
    'power': 'Trepar paredes',
    'isAlive': true
  };
 
  final spiderman = Hero.fromJson(rawJson);
  
  print(spiderman);
 
  final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );
 
  print(ironman);
 
}

class Hero{
  String name;
  String power;
  bool isAlive;
 
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  //Name constructor, son diferentes formas para inicializar un objeto
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
     
 
  @override
  String toString(){
     return '$name, $power, is Alive: ${isAlive ? 'Yes!' : 'Nope'}';
  }
}
