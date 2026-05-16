import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  // DropdownButton es un widget que muestra un botón con una opción seleccionada, al tocarlo se despliega una lsita de opciones a escoger

  String? selectedValue;
  List<String> paises = ["Perú", "Chile", "Argentina", "Brasil"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dropdown Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 8,
                ),
                child: DropdownButton(
                  value: selectedValue,
                  icon: Icon(Icons.arrow_downward, color: Colors.white),
                  dropdownColor: Colors.green[40], //color del menu desplegable
                  underline: Container(), //elimina la linea inferior
                  borderRadius: BorderRadius.circular(
                    25,
                  ), //se aplica al desplegable
                  hint: Text(
                    "Selecciona el país",
                    style: TextStyle(color: Colors.white),
                  ),
                  elevation: 15,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ), //estilo del texto
                  // focusColor: Colors.white,
                  // iconEnabledColor: Colors.red,
                  // iconDisabledColor: Colors.blue,
                  items: paises.map((pais) {
                    return DropdownMenuItem(child: Text(pais), value: pais);
                  }).toList(),
                  onChanged: (newValue) {
                    selectedValue = newValue!;
                    print(newValue);
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(height: 35),

            // DROPDOWN PARA FOMULARIOS
            DropdownButtonFormField(
              // Tiene todas las características de un textformfield
              decoration: InputDecoration(
                labelText: "Selecciona un país",
                border: OutlineInputBorder(),
              ),
              items: paises.map((pais) {
                return DropdownMenuItem(child: Text(pais), value: pais);
              }).toList(),
              onChanged: (value) {
                selectedValue = value;
                setState(() {});
              },
              validator: (value) {
                if (value == null) return "Por favor ingresa un país";
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
