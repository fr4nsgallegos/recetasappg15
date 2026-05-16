import 'package:flutter/material.dart';
import 'package:recetasappg15/examples/sliver/custom_scroll_page.dart';
import 'package:recetasappg15/examples/sliver/sliver_grid_page.dart';

class SliverHomePage extends StatelessWidget {
  const SliverHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplos de sliver"),
          bottom: TabBar(tabs: [Text("CustomScrollView"), Text("SliverGrid")]),
        ),
        body: TabBarView(children: [CustomScrollPage(), SliverGridPage()]),
      ),
    );
  }
}
