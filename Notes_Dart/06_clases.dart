void main(){
  
  final Hero wolverine = new Hero(name: 'Logan',power: 'Regeneracion'); //La funcion que manda a llamar es la del constructor
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}
//Una clase es un molde
class Hero{
  String name;
  String power;
  
  //El constructor es la funcion que se va a llamar cuando se inicialice la instancia
  //Tipo de inicializacion mas sencilla
  Hero({
    required this.name, 
    this.power = 'Sin poder'});
  
  //Tipo de inicializacion controlada
//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;
  
  //   Hero(String pName, String pPower){
//     this.name = pName; // Es igual a name=pName
//     this.power = pPower; // Es igual a power=pPower
//   }
  @override
  String toString(){
    return '$name - $power';
  }
}