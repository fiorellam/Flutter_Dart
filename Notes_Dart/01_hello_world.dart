//Void le dice a dart que la funcion main no regresa nada
void main() {
//   var myName = 'Fiore';

//String es una mejor forma que hacerlo con var ya que se debe especificar el tipo de dato
//   String myName = 'Fiore';

//Si uso final, no voy a poder cambiar el valor de esa variable, es un poco parecido a una constante
//   final myName = 'Fiore';

  //Es una inicializacion tardia
//   late final myName;

  const myName = 'Fiore';

  print('Hola $myName');
  print('Hola ${myName.toUpperCase()}');
  print("Hola ${1 + 1}");
  print('Hola ${1 + 1}');
}