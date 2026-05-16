import 'package:flutter/material.dart';

class SliverPaddingTab extends StatelessWidget {
  const SliverPaddingTab({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SliverPersistentHeader -> Permite crear un encabezado que puede quedarse visible mientras hacemos el scroll
        SliverPersistentHeader(pinned: true, delegate: MyHeaderDelegate()),

        // Sliverpadding -> Sirve para agregar espacios al rededor de un sliver
        SliverPadding(
          padding: EdgeInsets.all(32),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(child: Text("Categoría: ${index + 1}")),
              );
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
          ),
        ),
        // SliverRemaning -> permite que un widget ocupe el espacio restante de la pantalla
        // no ayuda cuando la pantalla tiene poco contenido y queremos que el mensaje final se vea centrado y no pegado hacia arriba
        SliverFillRemaining(
          hasScrollBody:
              false, //indica que el contenido no necesita su propio escroll interno
          child: Center(
            child: Text("No hay mas contenido", style: TextStyle(fontSize: 25)),
          ),
        ),
      ],
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("My header"),
    );
  }

  @override
  double get maxExtent => 120; //altura máxima

  @override
  double get minExtent => 60; //altuna mínima

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
