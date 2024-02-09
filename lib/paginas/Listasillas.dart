import 'package:flutter/material.dart';

class Listasillas extends StatelessWidget {
  const Listasillas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 177, 175, 171),
        title: Text(
          "Lista Sillas",
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
               
      ),
    );
  }
}