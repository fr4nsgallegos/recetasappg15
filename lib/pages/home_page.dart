import 'package:flutter/material.dart';
import 'package:recetasappg15/widgets/receta_card_widget.dart';

class HomePage extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _preparationController = TextEditingController();
  TextEditingController _urlImageController = TextEditingController();

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

              // RecetaCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
