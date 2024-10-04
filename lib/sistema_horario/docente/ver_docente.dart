import 'package:flutter/material.dart';

class VerDocentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ver Docentes'),
      ),
      body: Center(
        child: Text(
          'Estás en la sección de Docentes',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
