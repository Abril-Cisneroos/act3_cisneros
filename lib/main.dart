import 'package:cisnerosrutas/pagina_cinco.dart';
import 'package:cisnerosrutas/pagina_cuatro.dart';
import 'package:cisnerosrutas/pagina_seis.dart';
import 'package:cisnerosrutas/pagina_siete.dart';
import 'package:cisnerosrutas/pagina_tres.dart';
import 'package:flutter/material.dart';
import 'package:cisnerosrutas/pagina_uno.dart';
import 'package:cisnerosrutas/pagina_dos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cisneros",
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstScreen(),
        '/second': (context) => const PaginaDos(),
        '/Pantalla tres': (context) => const Paginatres(),
        '/Pantalla cuatro': (context) => const Paginacuatro(),
        '/Pantalla cinco': (context) => const Paginacinco(),
        '/Pantalla seis ': (context) => const PaginaSeis(),
        '/Pantalla siete ': (context) => const PaginaSiete(),
      },
    );
  }
}
