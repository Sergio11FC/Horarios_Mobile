// conexion a la base de datos en xammpp

import 'package:mysql1/mysql1.dart';

class Conexion {
  // crear el metodo de get connection
  Future<MySqlConnection> getConnection() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'horarios',
        password: ''));
    return conn;
  }
}
