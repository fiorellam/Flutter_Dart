/*Streams pueden ser retornados y usados como objetos, funciones o metodos
son un flujo de informacion que puede estar emitiendo valores periodicamente,
una unica vez o nunca
Un stream podria verse como una manguera conectada a un tubo de agua, cuando 
abres el tubo el agua fluye, cada gota de agua sería una emision del Stream, 
la manguera puede nunca cerrarse, cerrarse o nunca abrirse
*/
void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
//     print('Desde stream periodic: $value');
    return value;
  }).take(5);
}
