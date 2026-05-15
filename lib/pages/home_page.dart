import 'package:flutter/material.dart';
import 'package:recetasappg15/models/receta_model.dart';
import 'package:recetasappg15/widgets/receta_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _preparationController = TextEditingController();
  TextEditingController _urlImageController = TextEditingController();
  List<RecetaModel> recetasList = [];

  RecetaModel recetaWafles = RecetaModel(
    title: "Wafles",
    preparation:
        """ Primero agregamos la leche, huevos, azúcar, sal y esencia de vainilla en nuestra licuadora y mezclamos bien durante 2 minutos.
Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme.
Calentamos la waflera a la temperatura deseada y rociamos aceite en spray. Luego, colocamos la mezcla dentro y dejamos cocinar.
Una vez listo, retirar el waffle, disponer sobre un plato y decorar con crema chantilly, frutillas, arándanos, hojas de menta y un generoso chorro de miel.
¡A disfrutar!""",
    urlImage:
        "https://cdn.shopify.com/s/files/1/0500/5121/9607/files/wafles.jpg?v=1630701223",
  );

  @override
  void initState() {
    super.initState();
    recetasList.add(recetaWafles);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0D2F48),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("App de recetas"),
        backgroundColor: Color(0xff0D2F48),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: "Ingresa el título",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.title, color: Colors.white),
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 16),

              TextField(
                controller: _preparationController,
                decoration: InputDecoration(
                  labelText: "Preparación",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _urlImageController,
                decoration: InputDecoration(
                  labelText: "Url de imagen",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(onPressed: () {}, child: Text("Registrar receta")),
              SizedBox(height: 32),

              ...recetasList.map((receta) => RecetaCardWidget(receta)).toList(),
              // RecetaCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
