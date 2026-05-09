import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  @override
  State<TextfieldPage> createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  TextEditingController _emailController = TextEditingController();

  bool _hasError = false;

  void _validarCorreo() {
    String correo = _emailController.text;
    if (correo.contains("@")) {
      _hasError = false;
    } else {
      _hasError = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Page")),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                // obscureText: true, //ocultar texto para contraeñas
                style: TextStyle(
                  //define el color del texto
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.red,
                cursorWidth: 10, //ancho del cursor
                cursorHeight: 20, //alto del cursor
                cursorRadius: Radius.circular(20),
                maxLines: 2, //máximo de lineas
                textCapitalization: TextCapitalization
                    .sentences, //pone en maýuscula segun lo configuremos
                // onChanged: (value) => _validarCorreo(),
                decoration: InputDecoration(
                  errorText: _hasError ? "Formato inválido" : null,
                  filled: true, //rellena de color al field
                  fillColor: Colors.grey.shade300, //Color de fondo
                  labelText: "Correo",
                  hintText: "Ejemplo@correo.com",
                  helperText: "Ingresa un correo completo",
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.green, width: 4),
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // border: UnderlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.blueAccent, width: 4),
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 4),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 4),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              SizedBox(height: 32),

              ElevatedButton(
                onPressed: () {
                  _validarCorreo();
                },
                child: Text("VALIDAR"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
