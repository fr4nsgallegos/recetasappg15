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
class CustomScrollPage extends StatelessWidget {
  const CustomScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SliverAppBar-> es como un AppBar, pero preparado para trabajar dentro de un CustomscrolllvIEW
        // fLUTTER lo define como un appbar de material design que se puede trabajar con CustomscrolllvIEW
        SliverAppBar(
          title: Text("Mi pantalla"),
          // pinned:
          // true, //hace que el Appbar quede pegado arriba si hacemos scroll
          floating:
              true, //hace que el appbar aparezca rápidamente cando el usuario empieza a hacer scroll hacia arriba

          snap:
              true, //hace que el appbar aparezca de forma más inmediata y animada (generalmente se usaro con floatin:true)
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
        // SliverList -> es una lista que trabaja dentro de CustomScrollView
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 25, (
            context,
            index,
          ) {
            // Demostración de que no construye todos los elemntos de golpe. Contruye los elemntos conforme se necesitan para la visualización
            print("Mostrando: $index");
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: CircleAvatar(child: Text("${index + 1}")),
                title: Text("Elemento $index"),
              ),
            );
          }),
        ),

        // SliverToBoxAdapter -> es como un adaptador de enchufe, si tengo un widget normal y quiero conectarlo al mundo de slivers, lo envuelo en un SliverToBoxAdapter
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(32),
              child: Text(
                "Categorías populares",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
