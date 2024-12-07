//Future representa el resultado de una operacion asincrona, es una promesa de que pronto tendras un valor
//La promesa puede fallar y hay que manejar la exepcion.
//Los futures son un acuerdo de que en el futuro tendras un valor para ser usado
void main() async {
  //Es lo mismo que Future<void> main() async
  print('Inicio del programa');

  try {
    //await le dice a dart que espere el resultado y que una vez que lo obtenga continue la ejecucion del programa
    final value = await httpGet('https://fiorella.dev.com/conferencias');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  // httpGet('https://fiorella.dev.com/conferencias').then((value) {
  //   print(value);
  // }).catchError((err) {
  //   print('Error: $err');
  // });

  print('Fin del programa');
}

//Esta peticion sera de tipo Future
//Utilizamos async para indicar que una funcion o metodo va a retornar un future
Future<String> httpGet(String url) async {
  //Podemos usar await para que espere a que el future se realice
  //Await transforma los futures como si fuera codigo sincrono y secuencial
  //await solo se puede usar cuando estamos en funciones asincronas
  await Future.delayed(const Duration(seconds: 1));
  throw 'ERROR EN LA PETICION';
//   return 'Tenemos el valor de la peticion'; //Cuando se realice el future, realizamos el return
}
