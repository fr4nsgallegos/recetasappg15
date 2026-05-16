import 'package:flutter/material.dart';

class SliverPaddingTab extends StatelessWidget {
  const SliverPaddingTab({super.key});
  // Sliverpadding -> Sirve para agregar espacios al rededor de un sliver
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
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
      ],
    );
  }
}
