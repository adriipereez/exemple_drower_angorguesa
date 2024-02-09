
import 'package:exemple_drower_angorguesa/paginas/listasillas.dart';
import 'package:flutter/material.dart';

class pizza extends StatelessWidget {
  const pizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 177, 175, 171),
        title: Text(
          "Subir Anuncio Silla",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.chair,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Primera Página"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/primera_pagina");
              },
            ),
            ListTile(
              leading: Icon(Icons.post_add),
              title: Text("Anuncio"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/pizza");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: Text("Lista Sillas"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/listasillas");
              },
            ),
          ],
        ),
      ),
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
                      decoration: InputDecoration(
                        labelText: 'Nombre de la silla',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Descripción',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
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
                Navigator.pop(context);
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
              child: Text("Enviar",
              style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
