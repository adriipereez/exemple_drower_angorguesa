import 'package:exemple_drower_angorguesa/componentes/appbarPers.dart';
import 'package:exemple_drower_angorguesa/componentes/drawePers.dart';
import 'package:exemple_drower_angorguesa/data/DataBase.dart';
import 'package:exemple_drower_angorguesa/main.dart';
import 'package:exemple_drower_angorguesa/paginas/listasillas.dart';
import 'package:exemple_drower_angorguesa/paginas/Silla.dart';
import 'package:flutter/material.dart';

class pizza extends StatefulWidget {
  pizza({super.key});

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  DataBase bd = DataBase();

  TextEditingController nombreController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();
  TextEditingController precioController = TextEditingController();

   agregarSillaALista() {
    bd.cargarDatos();
    setState(() {
      bd.listaSillas.add([
        nombreController.text,
        descripcionController.text,
        precioController.text
      ]);
    });
    bd.actualizarDatos(); // Guarda los cambios en Hive
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPers(titleText: "Subir Anuncio Silla",),
      drawer:drawePers(),
      backgroundColor: Color.fromARGB(96, 241, 181, 89),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "SUBIR ANUNCIO",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: nombreController,
                      decoration: InputDecoration(
                        labelText: 'Nombre de la silla',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: descripcionController,
                      decoration: InputDecoration(
                        labelText: 'Descripción',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: precioController,
                      decoration: InputDecoration(
                        labelText: 'Precio',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                agregarSillaALista(); // Agregar la nueva silla a la lista
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Listasillas(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text(
                "Enviar",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
