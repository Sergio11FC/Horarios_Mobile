// datos de la base de datos de la aplicacion de horarios en xampp
// idDoc      int
// cedulaDoc  int
// nombreDoc  String
// localDoc   String
// idTipoDoc  int
// idMuni     int

//import 'package:flutter/material.dart';
//import '../../models/conexion.dart';
//import 'package:mysql1/mysql1.dart';

// crea los bottones de ingresar los campos de los docentes en la base de datos y tambien los para ingresar los campos de los docentes en la base de datos

import 'package:flutter/material.dart';
import '../../models/conexion.dart'; // Tu archivo de conexión
import 'package:mysql1/mysql1.dart'; // Asegúrate de que este paquete esté instalado

class IngresarDocente extends StatefulWidget {
  @override
  _IngresarDocenteState createState() => _IngresarDocenteState();
}

class _IngresarDocenteState extends State<IngresarDocente> {
  // Controladores para los campos de texto
  final TextEditingController _cedulaController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _localController = TextEditingController();
  final TextEditingController _idTipoDocController = TextEditingController();
  final TextEditingController _idMuniController = TextEditingController();

  // Método para ingresar los datos en la base de datos
  Future<void> _ingresarDocente() async {
    try {
      // Obtén la conexión de tu archivo `conexion.dart`
      final conn = await Conexion().getConnection();

      // Ejecuta la consulta para insertar el nuevo docente
      await conn.query(
        'INSERT INTO docentes (cedulaDoc, nombreDoc, localDoc, idTipoDoc, idMuni) VALUES (?, ?, ?, ?, ?)',
        [
          int.parse(_cedulaController.text),
          _nombreController.text,
          _localController.text,
          int.parse(_idTipoDocController.text),
          int.parse(_idMuniController.text),
        ],
      );

      // Cierra la conexión
      await conn.close();

      // Muestra un mensaje de éxito
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Docente ingresado exitosamente.'),
      ));
    } catch (e) {
      // Maneja errores
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error al ingresar docente: $e'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar Docente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _cedulaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Cédula del Docente'),
            ),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre del Docente'),
            ),
            TextField(
              controller: _localController,
              decoration: InputDecoration(labelText: 'Localidad del Docente'),
            ),
            TextField(
              controller: _idTipoDocController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ID Tipo de Docente'),
            ),
            TextField(
              controller: _idMuniController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ID Municipio'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _ingresarDocente,
              child: Text('Ingresar Docente'),
            ),
          ],
        ),
      ),
    );
  }
}
