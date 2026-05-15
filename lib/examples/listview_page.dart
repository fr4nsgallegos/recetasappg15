import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});
  Widget _buildContainer() {
    return Container(
      height: 50,
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Page")),
      body: ListView(
        children: [
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
          _buildContainer(),
        ],
      ),
    );
  }
}
