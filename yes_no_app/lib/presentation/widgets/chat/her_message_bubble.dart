import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; //Toma nuestro tema global, aqui tengo todos los colores que estan definidos en mi tema basados en mi seed que cree
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo', 
              style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        SizedBox(height: 10)
        //Todo: Imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size; //Dimensiones del dispositivo
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/0-c44a7789d54cbdcad867fb7845ff03ae.gif',
      width: size.width * 0.2,
      height: 170,
      fit: BoxFit.cover,
      loadingBuilder:(context, child, loadingProgress) {
        if(loadingProgress == null) return child ; //Si ya termino de cargar, regresa la imagen

        //Si aun no termina de cargar
        return Container(
          width: size.width * 0.2,
          height: 170,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: const Text('Imagen cargando'),
        );
      },
    ));
  }
}