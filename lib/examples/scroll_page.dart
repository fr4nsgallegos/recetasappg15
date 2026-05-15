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
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return _buildContainer("$index listview");
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 15,
                            height: 50,
                            color: Colors.cyan,
                          );
                        },
                        itemCount: 100,
                      ),
                    ),

                    ...List.generate(5, (index) {
                      print(index);
                      return _buildContainer(index.toString());
                    }),

                    _buildContainer("Hola"),

                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return _buildContainer("$index LISTVIEW");
                        },
                      ),
                    ),

                    ...List.generate(
                      10,
                      (index) => _buildContainer(index.toString()),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(10, (index) {
                            return _buildContainer(index.toString());
                          }),
                        ],
                      ),
                    ),
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
