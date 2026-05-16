import 'package:flutter/material.dart';

class PersistenHeaderTab extends StatelessWidget {
  const PersistenHeaderTab({super.key});

  @override
  Widget build(BuildContext context) {
    const sections = [
      {
        "title": "Frutas",
        "items": [
          "Manzana",
          "Pera",
          "Durazno",
          "Fresa",
          "Manzana",
          "Pera",
          "Durazno",
          "Fresa",
          "Manzana",
          "Pera",
          "Durazno",
          "Fresa",
          "Manzana",
          "Pera",
          "Durazno",
          "Fresa",
          "Manzana",
          "Pera",
          "Durazno",
          "Fresa",
        ],
      },
      {
        "title": "verduras",
        "items": ["Zanahoria", "Lechuga", "Tomate"],
      },
      {
        "title": "granos",
        "items": [
          "Quinua",
          "Arroz",
          "Trigo",
          "Quinua",
          "Arroz",
          "Trigo",
          "Quinua",
          "Arroz",
          "Trigo",
          "Quinua",
          "Arroz",
          "Trigo",
          "Quinua",
          "Arroz",
          "Trigo",
          "Quinua",
          "Arroz",
          "Trigo",
          "Quinua",
          "Arroz",
          "Trigo",
        ],
      },
    ];

    final slivers = <Widget>[
      SliverAppBar(
        pinned: true,
        expandedHeight: 120,
        flexibleSpace: FlexibleSpaceBar(title: Text("Headers Pegajosos")),
      ),
    ];

    // vAMOS a cosntruir los headers -> lista de items para cada sección
    for (final section in sections) {
      final title = section["title"] as String;
      final items = section["items"] as List<String>;

      slivers.add(
        SliverPersistentHeader(
          delegate: _SectionHeaderDelegate(title: title),
          pinned: true,
        ),
      );
      slivers.add(
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              leading: Icon(Icons.local_offer),
              title: Text(items[index]),
            );
          }, childCount: items.length),
        ),
      );
    }

    return CustomScrollView(slivers: slivers);
  }
}

class _SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  String title;
  _SectionHeaderDelegate({required this.title});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(title, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  // Indica cuando recsontruir sis e cambian los parámetros
  @override
  bool shouldRebuild(covariant _SectionHeaderDelegate oldDelegate) {
    return oldDelegate.title != title;
  }
}
