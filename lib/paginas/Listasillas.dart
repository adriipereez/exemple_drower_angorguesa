import 'package:exemple_drower_angorguesa/data/DataBase.dart';
import 'package:exemple_drower_angorguesa/main.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Listasillas extends StatefulWidget {

  Listasillas({super.key});

  @override
  State<Listasillas> createState() => _ListasillasState();
}

class _ListasillasState extends State<Listasillas> {
  DataBase bd = DataBase();
  final _boxdeSillas = Hive.box("adri");

  @override
  void initState(){
    print(_boxdeSillas.get("adri"));
    if(_boxdeSillas.get("adri") != null){bd.cargardatos();}
    super.initState();
  }

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
        children: [
          Center(
            child: SingleChildScrollView(
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Nombre', style: TextStyle(fontWeight: FontWeight.bold),),),
                  DataColumn(label: Text('Descripción', style: TextStyle(fontWeight: FontWeight.bold),)),
                  DataColumn(label: Text('Precio', style: TextStyle(fontWeight: FontWeight.bold),)),
                ],
                rows: bd.listaSillas.map((silla) => DataRow(
                  cells: [  
                    DataCell(Text(silla.nombre)),
                    DataCell(Text(silla.descripcion)),
                    DataCell(Text('\$ ${silla.precio.toString()}')),
                  ],
                )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}