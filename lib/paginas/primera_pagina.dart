// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PrimeraPagina extends StatelessWidget {
  const PrimeraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 177, 175, 171),
        title: Text("Página Principal"),
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
      body: Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(96, 241, 181, 89),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PAGINA PRINCIPAL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle
                      .italic, 
                  fontSize: 24, 
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 350,
                    child: Image.asset('assets/148784.jpg'),
                  ),
                  Container(
                    width: 350,
                    height: 350,
                    child: Image.asset('assets/123.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
