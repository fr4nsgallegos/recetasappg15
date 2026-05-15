import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class TextformfieldPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void mostrarSnackBarArriba(BuildContext context) {
    Flushbar(
      flushbarPosition:
          FlushbarPosition.TOP, //para que aparezca en la parte de arriba
      title: "Error",
      message: "Revisa el formulario",
      duration: Duration(seconds: 3),
      backgroundColor: Colors.redAccent,
      margin: EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(25),
      icon: Icon(Icons.error),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TexFormField PAge")),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Form es el contenedor del formulario
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //textFormfield es el/los campos del formulario
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Ingrese un correo";
                        } else if (value.length < 6) {
                          return "El correo debe tener al menos 6 caracteres";
                        } else if (!RegExp(
                          "[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}",
                        ).hasMatch(value)) {
                          return "Ingresa un correo válido";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Ingresa tu correo",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Ingrese una constraseña";
                        } else if (value.length < 6) {
                          return "Debe tener al menos 6 caracteres";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Ingresa tu contraseña",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Formulario válido");
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Form correcto, enviando"),
                              backgroundColor: Colors.green,
                            ),
                          );
                        } else {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text("Revisa las alertas!"),
                          //     backgroundColor: Colors.red,
                          //   ),
                          // );

                          mostrarSnackBarArriba(context);
                        }
                      },
                      child: Text("Enviar formulario"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
