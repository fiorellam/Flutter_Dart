import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen ({super.key}); //Identificador unico para el widget que se asigna en el constructor para mandar a la superclase
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://img.freepik.com/vector-premium/estilo-dibujos-animados-perro-caniche-ilustracion-vectorial_444663-1468.jpg'),
          ),
        ) , //Espacio antes del titulo
        title: const Text('Amor 💞'),
        centerTitle: true,
      ),
      body: _ChatView() , //Como un div
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder( 
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const MyMessageBubble()
                : const HerMessageBubble();
            })),
            Text('En chat')
          ],
        ),
      ),
    );
  }
}