import 'package:flutter/material.dart';

class pizza extends StatelessWidget {
  const pizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subir Anuncio Silla"),
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
                Navigator.pushNamed(context, "/primera_pagina");
              },
            ),
            ListTile(
              leading: Icon(Icons.post_add),
              title: Text("Anuncio"),
              onTap: () {
                Navigator.pushNamed(context, "/pizza");
              },
            ),
          ],
        ),
      ),
      body: Center(
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
              SizedBox(height: 16.0), // Separación entre campos de texto
              TextField(
                decoration: InputDecoration(
                  labelText: 'Descripción',
                ),
              ),
              SizedBox(height: 16.0), // Separación entre campos de texto
              TextField(
                decoration: InputDecoration(
                  labelText: 'Precio',
                ),
                keyboardType: TextInputType.number, // Teclado numérico
              ),
            ],
          ),
        ),
      ),
    );
  }
}
