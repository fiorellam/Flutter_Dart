import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen ({super.key}); //Identificador unico para el widget que se asigna en el constructor para mandar a la superclase
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amor 💞')
      ),
    );
  }
}