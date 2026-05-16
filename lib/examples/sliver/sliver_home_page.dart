import 'package:flutter/material.dart';
import 'package:recetasappg15/examples/sliver/custom_scroll_tab.dart';
import 'package:recetasappg15/examples/sliver/persisten_header_tab.dart';
import 'package:recetasappg15/examples/sliver/sliver_grid_tab.dart';
import 'package:recetasappg15/examples/sliver/sliver_listbuilder_tab.dart';
import 'package:recetasappg15/examples/sliver/sliver_padding_tab.dart';

class SliverHomePage extends StatelessWidget {
  const SliverHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplos de sliver"),
          bottom: TabBar(
            tabs: [
              Text("Custom"),
              Text("Grid"),
              Text("Padding"),
              Text("Sliverbuilder"),
              Text("Persistent Header"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomScrollTab(),
            SliverGridTab(),
            SliverPaddingTab(),
            SliverListbuilderTab(),
            PersistenHeaderTab(),
          ],
        ),
      ),
    );
  }
}
