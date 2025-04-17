import 'package:flutter/material.dart';

class PantallaCuatro extends StatefulWidget {
  // ignore: use_super_parameters
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xffb131d7),
        title: const Text(
          'Pantalla Cuatro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Botón Switch
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              style: ElevatedButton.styleFrom(
                // ignore: prefer_const_constructors
                backgroundColor: Color(0xff695eff), // color de fondo
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Switch',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            // Imagen con AnimatedCrossFade
            AnimatedCrossFade(
              firstChild: Image.asset(
                'assets/icon/blue.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              secondChild: Image.asset(
                'assets/icon/ocean.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),

            const SizedBox(height: 30),

            // Botón para regresar
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla Inicial'),
            ),
          ],
        ),
      ),
    );
  }
}
