import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key}); //Inicializa el key del widget para el statelesswidget

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //Se le pone const porque jamas va a cambiar
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Hola Mundo')),
      ) ,
    );
  }
}