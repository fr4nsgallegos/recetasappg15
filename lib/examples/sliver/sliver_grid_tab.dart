import 'package:flutter/material.dart';

class SliverGridTab extends StatelessWidget {
  const SliverGridTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          //  delegate -> Define qué es lo que va a construir, en este caso cards
          delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: Colors.cyan,
              child: Center(child: Text("item ${index + 1}")),
            );
          }, childCount: 12),
          //gridDelegate -> Define CÓMO lo va a construir
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //número de columnas
            mainAxisSpacing: 10, //espacio vertical entre los elementos
            crossAxisSpacing: 15, // espacio horizontal entre los elementos
            childAspectRatio:
                1.2, //controla la porción entre el ancho y el alto de cada elemento
          ),
        ),
      ],
    );
  }
}
