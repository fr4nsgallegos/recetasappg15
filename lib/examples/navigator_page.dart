import 'package:flutter/material.dart';

// class HomeNavigatorPage extends StatelessWidget {
//   const HomeNavigatorPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Navigator PAGE")),
//       body: Center(
//         child: Column(mainAxisSize: MainAxisSize.min, children: [

//         ]),
//       ),
//     );
//   }
// }

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetallePage(nombrePersona: "jhonny"),
                  ),
                );

                // Al volver de detalle page, mostramos el resultado si es que se devuelve algo
                if (context.mounted && result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Resultado: $result ")),
                  );
                }
              },
              child: Text("Ir a la página detalle"),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetallePage(nombrePersona: "María"),
                  ),
                );
              },
              child: Text("ir a detalle sin retorno"),
            ),
          ],
        ),
      ),
    );
  }
}

class DetallePage extends StatelessWidget {
  String nombrePersona;

  DetallePage({required this.nombrePersona});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, "OK DESDE EL BOTTON APPBAR");
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Soy la página detalle"),
            Text(
              "el nombre es $nombrePersona",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "OK DESDE EL DETALLE PAGE");
              },
              child: Text("Retroceder a la pantalla anterior"),
            ),
          ],
        ),
      ),
    );
  }
}
