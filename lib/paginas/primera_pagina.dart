// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:exemple_drower_angorguesa/componentes/appbarPers.dart';
import 'package:exemple_drower_angorguesa/componentes/drawePers.dart';
import 'package:flutter/material.dart';

class PrimeraPagina extends StatelessWidget {
  const PrimeraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPers(titleText: "Págin Principal",),
      drawer: drawePers(),
      body: Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(96, 241, 181, 89),
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PAGINA PRINCIPAL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
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
