import 'package:flutter/material.dart';

class SliverFixedExtentlistTab extends StatelessWidget {
  const SliverFixedExtentlistTab({super.key});

  // Cuando todos los elemtnos tienen la mismta altura, podemos usar sliverfixedextenlist para optimizar el scroll

  //  ventajas -> flutter ya no sabe la altura, cálculo mas rapido que slvierlist, no necesita medir el widget para saber cuánto ocupa
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(pinned: true, title: Text("Fixed extent (alto fijo)")),
        SliverFixedExtentList(
          // itemExtent define el alto exacto de cada item, optimiza e layout
          itemExtent: 120,
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              alignment: Alignment.center,

              // Ya no es necesario colocar la altura, porquie lo define el sliver
              color: index.isEven ? Colors.indigo : Colors.teal,
              child: ListTile(
                leading: Icon(Icons.height),
                title: Text("Fila de altura fija $index"),
                subtitle: Text("Rinde mejor que sliverlist en este caso "),
              ),
            );
          }, childCount: 60),
        ),
      ],
    );
  }
}
