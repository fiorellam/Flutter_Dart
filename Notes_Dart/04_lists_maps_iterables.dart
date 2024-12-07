void main() {
  //List
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original ${numbers}');
  print('List Length contiene ${numbers.length} elementos');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed ${numbers.reversed}');

  //Ahora es un iterable, un elemento que se puede iterar
  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  
  //Un set es como un listado, pero sus valores son unicos
  print('Set: ${reversedNumbers.toSet() }');
  
  //where evalua cada uno de los elementos del listado
  final numbersGreaterThan5 = numbers.where( (num){
    return num > 5; //Regresa un true si es mayor a 5 y un false si NO es mayor a 5
  });
  
  print('>5: ${numbersGreaterThan5.toSet()}');
}
