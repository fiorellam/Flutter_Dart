import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; //Toma nuestro tema global, aqui tengo todos los colores que estan definidos en mi tema basados en mi seed que cree
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Enim anim ipsum duis ut.', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}