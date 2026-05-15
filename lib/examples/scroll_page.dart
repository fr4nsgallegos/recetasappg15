import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  Widget _buildContainer(String text) {
    return Container(
      height: 80,
      width: 80,
      color: Colors.red,
      margin: EdgeInsets.all(16),
      child: Center(child: Text(text, style: TextStyle(fontSize: 30))),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    print(screenHeigth);
    return Scaffold(
      appBar: AppBar(title: Text("App bar")),
      body: Center(
        child: Column(
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
                    ...List.generate(50, (index) {
                      print(index);
                      return _buildContainer(index.toString());
                    }),

                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                    // _buildContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
