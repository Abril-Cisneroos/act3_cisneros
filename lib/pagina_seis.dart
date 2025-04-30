import 'package:flutter/material.dart';

class PaginaSeis extends StatefulWidget {
  const PaginaSeis({Key? key}) : super(key: key);

  @override
  State<PaginaSeis> createState() => _PaginaSeisState();
}

class _PaginaSeisState extends State<PaginaSeis> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Seis'),
        backgroundColor: Color(0xffe1ad6b),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
            ),
            child: const Text('Change padding'),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
