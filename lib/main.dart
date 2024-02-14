import 'package:exemple_drower_angorguesa/paginas/pizza.dart';
import 'package:exemple_drower_angorguesa/paginas/primera_pagina.dart';
import 'package:exemple_drower_angorguesa/paginas/listasillas.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';


void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox("adri");
  runApp(const Aplicacion());

}

class Aplicacion extends StatelessWidget {
  const Aplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeraPagina(),
      routes: {
        "/primera_pagina": (context) => PrimeraPagina(),
        "/pizza": (context) => pizza(),
        "/listasillas":(context) => Listasillas(),
      },
    );
  }
}