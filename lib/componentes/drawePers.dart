import 'package:flutter/material.dart';

class drawePers extends StatelessWidget {
  const drawePers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
