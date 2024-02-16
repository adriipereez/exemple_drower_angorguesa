import 'package:exemple_drower_angorguesa/componentes/appbarPers.dart';
import 'package:exemple_drower_angorguesa/componentes/drawePers.dart';
import 'package:exemple_drower_angorguesa/data/DataBase.dart';
import 'package:flutter/material.dart';

class Listasillas extends StatefulWidget {
  Listasillas({Key? key});

  @override
  State<Listasillas> createState() => _ListasillasState();
}

TextEditingController nombreSillaController = TextEditingController();
TextEditingController nombreController = TextEditingController();
TextEditingController descripcionController = TextEditingController();
TextEditingController precioController = TextEditingController();
TextEditingController nombreControllernuevo = TextEditingController();

class _ListasillasState extends State<Listasillas> {
  DataBase bd = DataBase();
  String titleText3 = "ListaSillas";
  TextEditingController nombreSillaController =
      TextEditingController(); // Controlador para el TextField

  @override
  void initState() {
    super.initState();
    bd.cargarDatos();
  }

  void eliminarSillaPorNombre(String nombre) {
    bd.cargarDatos();
    setState(() {
      bd.EliminarLista(nombreSillaController.text);
    });
    bd.actualizarDatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPers(
        titleText: titleText3,
      ),
      drawer: drawePers(),
      backgroundColor: Color.fromARGB(96, 241, 181, 89),
      body: Column(
        children: [
          Center(
            child: SingleChildScrollView(
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('Nombre',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text('Descripción',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text('Precio',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
                rows: bd.listaSillas
                    .map(
                      (silla) => DataRow(
                        cells: [
                          DataCell(Text(silla[0])),
                          DataCell(Text(silla[1])),
                          DataCell(Text(silla[2])),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Centra el contenido horizontalmente
              children: [
                Text('Nombre: '), // Etiqueta para el TextField
                SizedBox(
                  width: 150, // Ancho deseado del TextField
                  child: TextField(
                    controller:
                        nombreSillaController, // Asigna el controlador al TextField
                    decoration: InputDecoration(
                      hintText: 'Ingrese el nombre de la silla',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Aquí llamas a la función para eliminar la silla por nombre
              eliminarSillaPorNombre(nombreSillaController.text);
            },
            child: Text('Eliminar silla por nombre'),
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
                    TextField(
                      controller: nombreControllernuevo,
                      decoration: InputDecoration(
                        labelText: 'Nuevo nombre de la silla',
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
           ElevatedButton(
            onPressed: () {
              actualizarDatos();
            },
            child: Text('Actualizar silla'),
          ),
        ],
      ),
    );
  }
  
  void actualizarDatos() {
    bd.cargarDatos();
    setState(() {
      bd.ActualizarLista(nombreController.text, nombreControllernuevo.text, descripcionController.text, precioController.text);
    });
    bd.actualizarDatos();
  }
}
