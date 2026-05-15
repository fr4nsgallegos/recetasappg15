import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});
  Widget _buildContainer(String text) {
    return Container(
      height: 80,
      width: 10,
      color: Colors.red,
      margin: EdgeInsets.all(16),
      child: Center(child: Text(text, style: TextStyle(fontSize: 30))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Page")),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return _buildContainer(index.toString());
        },
        separatorBuilder: (context, index) {
          return Container(width: 300, height: 10, color: Colors.green);
        },
        itemCount: 150,
      ),
      // LISTVIEW BUILDER
      // ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) {
      //     print("MOSTRANDO: $index");
      //     return _buildContainer(index.toString());
      //   },
      // ),

      // LIST VIEW SIMPLE
      // ListView(
      //   children: List.generate(50, (index) {
      //     print(index);
      //     return _buildContainer(index.toString());
      //   }),
      // ),
    );
  }
}
