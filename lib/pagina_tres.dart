import 'package:flutter/material.dart';

class Paginatres extends StatefulWidget {
  const Paginatres({Key? key}) : super(key: key);

  @override
  State<Paginatres> createState() => _PaginatresState();
}

class _PaginatresState extends State<Paginatres> {
  bool selected = false; // State for the AnimatedAlign widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla tres")),
        backgroundColor: Color(0xffeac2f2),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ver pantalla 1'),
            ),
          ),
          const SizedBox(height: 30),
          // Replaced the counter container with the animated widget
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              width: double.infinity,
              height: 250.0,
              color: Color(0xff9e00f9),
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
