import 'package:flutter/material.dart';

// Sliver -> es una porción de una pantalla con Scroll
// Es un widget especializado para trabajar dentro de un sistema de scroll avanzado
// Widget de bajo nivel optimizado para Scroll, dibuja por partes o segmentos en vez de cargar toda la pantalla
// Los slivers se usan dentro de un contenedor
// CustomScrollView(
// sliver: [
//        dibujamos lo slivers
//    ]
// )

// CustomScrollView ->  es el contenedor principal que permite usar varios Slivers dentro de un solo scroll
class SliverPage extends StatelessWidget {
  const SliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar-> es como un AppBar, pero preparado para trabajar dentro de un CustomscrolllvIEW
          // fLUTTER lo define como un appbar de material design que se puede trabajar con CustomscrolllvIEW
          SliverAppBar(
            title: Text("Mi pantalla"),
            expandedHeight: 220, //altura máxima cuando el appbar esta extendido
            // flexibleSpace -> Permite crear un espacio flexible dentro del Appbar
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Catálogo"),
              background: Image.network(
                "https://images.pexels.com/photos/11029040/pexels-photo-11029040.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 20, (
              context,
              index,
            ) {
              return ListTile(title: Text("Elemento $index"));
            }),
          ),
        ],
      ),
    );
  }
}
