import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

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
    double screenHeigth = MediaQuery.of(context).size.height;
    print(screenHeigth);
    return Scaffold(
      appBar: AppBar(title: Text("App bar")),
      body: Column(
        children: [
          Text("CABECERA 1"),
          Text("CABECERA 1"),
          Text("CABECERA 1"),
          Text("CABECERA 1"),
          Expanded(
            child: SingleChildScrollView(
              // scrollDirection: Axis.horizontal, //scroll horizonta, funciona con un child Row
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
