import 'package:flutter/material.dart';
import 'router/rutas.dart';

import 'package:flutter/material.dart';
import 'router/rutas.dart';
import 'sistema_horario/asignatura/ingresar_asignatura.dart';
import 'sistema_horario/asignatura/modificar_asignatura.dart';
import 'sistema_horario/asignatura/eliminar_asignatura.dart';
import 'sistema_horario/asignatura/ver_asignatura.dart';
import 'sistema_horario/criterio_docente/ingresar_criterio_docente.dart';
import 'sistema_horario/criterio_docente/modificar_criterio_docente.dart';
import 'sistema_horario/criterio_docente/eliminar_criterio_docente.dart';
import 'sistema_horario/criterio_docente/ver_criterio_docente.dart';
import 'sistema_horario/departamento/ingresar_departamento.dart';
import 'sistema_horario/departamento/modificar_departamento.dart';
import 'sistema_horario/departamento/eliminar_departamento.dart';
import 'sistema_horario/departamento/ver_departamento.dart';
import 'sistema_horario/docasig_horario/ingresar_docasig_horario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Horarios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HorariosPage(),
    );
  }
}

class HorariosPage extends StatefulWidget {
  @override
  _HorariosPageState createState() => _HorariosPageState();
}

class _HorariosPageState extends State<HorariosPage> {
  void _showSubMenu(BuildContext context, String type) {
    Navigator.pop(context); // Cierra el menú lateral
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: ListView(
            children: _getSubMenuItems(type),
          ),
        );
      },
    );
  }

  List<Widget> _getSubMenuItems(String type) {
    List<Widget> items = [];

    switch (type) {
      case 'docente':
        items.addAll([
          _createSubMenuItem('Ingresar Docente', Rutas.ingresarDocente),
          _createSubMenuItem('Modificar Docente', Rutas.modificarDocente),
          _createSubMenuItem('Eliminar Docente', Rutas.eliminarDocente),
          _createSubMenuItem('Ver Docente', Rutas.verDocente),
        ]);
        break;
      case 'tipo_docente':
        items.addAll([
          _createSubMenuItem(
              'Ingresar Tipo Docente', Rutas.ingresarTipoDocente),
          _createSubMenuItem(
              'Modificar Tipo Docente', Rutas.modificarTipoDocente),
          _createSubMenuItem(
              'Eliminar Tipo Docente', Rutas.eliminarTipoDocente),
          _createSubMenuItem('Ver Tipo Docente', Rutas.verTipoDocente),
        ]);
        break;
      case 'criterio_docente':
        items.addAll([
          _createSubMenuItem(
              'Ingresar Criterio Docente', Rutas.ingresarCriterioDocente),
          _createSubMenuItem(
              'Modificar Criterio Docente', Rutas.modificarCriterioDocente),
          _createSubMenuItem(
              'Eliminar Criterio Docente', Rutas.eliminarCriterioDocente),
          _createSubMenuItem('Ver Criterio Docente', Rutas.verCriterioDocente),
        ]);
        break;
      case 'inclusion_social':
        items.addAll([
          _createSubMenuItem(
              'Ingresar Inclusión Social', Rutas.ingresarInclusionSocial),
          _createSubMenuItem(
              'Modificar Inclusión Social', Rutas.modificarInclusionSocial),
          _createSubMenuItem(
              'Eliminar Inclusión Social', Rutas.eliminarInclusionSocial),
          _createSubMenuItem('Ver Inclusión Social', Rutas.verInclusionSocial),
        ]);
        break;
      case 'docasig_horario':
        items.addAll([
          _createSubMenuItem('Ingresar Docencia y Asignación de Horario',
              Rutas.ingresarDocasigHorario),
          _createSubMenuItem('Modificar Docencia y Asignación de Horario',
              Rutas.modificarDocasigHorario),
          _createSubMenuItem('Eliminar Docencia y Asignación de Horario',
              Rutas.eliminarDocasigHorario),
          _createSubMenuItem(
              'Ver Docencia y Asignación de Horario', Rutas.verDocasigHorario),
        ]);
        break;
      case 'asignatura':
        items.addAll([
          _createSubMenuItem('Ingresar Asignatura', Rutas.ingresarAsignatura),
          _createSubMenuItem('Modificar Asignatura', Rutas.modificarAsignatura),
          _createSubMenuItem('Eliminar Asignatura', Rutas.eliminarAsignatura),
          _createSubMenuItem('Ver Asignatura', Rutas.verAsignatura),
        ]);
        break;
      case 'programa':
        items.addAll([
          _createSubMenuItem('Ingresar Programa', Rutas.ingresarPrograma),
          _createSubMenuItem('Modificar Programa', Rutas.modificarPrograma),
          _createSubMenuItem('Eliminar Programa', Rutas.eliminarPrograma),
          _createSubMenuItem('Ver Programa', Rutas.verPrograma),
        ]);
        break;
      case 'espacio':
        items.addAll([
          _createSubMenuItem('Ingresar Espacio', Rutas.ingresarEspacio),
          _createSubMenuItem('Modificar Espacio', Rutas.modificarEspacio),
          _createSubMenuItem('Eliminar Espacio', Rutas.eliminarEspacio),
          _createSubMenuItem('Ver Espacio', Rutas.verEspacio),
        ]);
        break;
      case 'tipo_espacio':
        items.addAll([
          _createSubMenuItem(
              'Ingresar Tipo de Espacio', Rutas.ingresarTipoEspacio),
          _createSubMenuItem(
              'Modificar Tipo de Espacio', Rutas.modificarTipoEspacio),
          _createSubMenuItem(
              'Eliminar Tipo de Espacio', Rutas.eliminarTipoEspacio),
          _createSubMenuItem('Ver Tipo de Espacio', Rutas.verTipoEspacio),
        ]);
        break;
      case 'ubicacion':
        items.addAll([
          _createSubMenuItem('Ingresar Ubicación', Rutas.ingresarUbicacion),
          _createSubMenuItem('Modificar Ubicación', Rutas.modificarUbicacion),
          _createSubMenuItem('Eliminar Ubicación', Rutas.eliminarUbicacion),
          _createSubMenuItem('Ver Ubicación', Rutas.verUbicacion),
        ]);
        break;
      case 'municipio':
        items.addAll([
          _createSubMenuItem('Ingresar Municipio', Rutas.ingresarMunicipio),
          _createSubMenuItem('Modificar Municipio', Rutas.modificarMunicipio),
          _createSubMenuItem('Eliminar Municipio', Rutas.eliminarMunicipio),
          _createSubMenuItem('Ver Municipio', Rutas.verMunicipio),
        ]);
        break;
      case 'departamento':
        items.addAll([
          _createSubMenuItem(
              'Ingresar Departamento', Rutas.ingresarDepartamento),
          _createSubMenuItem(
              'Modificar Departamento', Rutas.modificarDepartamento),
          _createSubMenuItem(
              'Eliminar Departamento', Rutas.eliminarDepartamento),
          _createSubMenuItem('Ver Departamento', Rutas.verDepartamento),
        ]);
        break;
      case 'pais':
        items.addAll([
          _createSubMenuItem('Ingresar País', Rutas.ingresarPais),
          _createSubMenuItem('Modificar País', Rutas.modificarPais),
          _createSubMenuItem('Eliminar País', Rutas.eliminarPais),
          _createSubMenuItem('Ver País', Rutas.verPais),
        ]);
        break;
      case 'usuario':
        items.addAll([
          _createSubMenuItem('Login Usuario', Rutas.loginUsuario),
          _createSubMenuItem('Iniciar Sesión', Rutas.iniciarSesion),
          _createSubMenuItem('Cerrar Sesión', Rutas.cerrarSesion),
        ]);
        break;
    }

    return items;
  }

  Widget _createSubMenuItem(String title, String route) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route); // Navega a la ruta correspondiente
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Horarios'),
        centerTitle: true, // Centra el título en la barra de la aplicación
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'Menú Horarios',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Docentes'),
              onTap: () => _showSubMenu(context, 'docente'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Tipo Docente'),
              onTap: () => _showSubMenu(context, 'tipo_docente'),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Criterio Docente'),
              onTap: () => _showSubMenu(context, 'criterio_docente'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Inclusión Social'),
              onTap: () => _showSubMenu(context, 'inclusion_social'),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Docencia y Asignación Horario'),
              onTap: () => _showSubMenu(context, 'docasig_horario'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Asignaturas'),
              onTap: () => _showSubMenu(context, 'asignatura'),
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('Programas'),
              onTap: () => _showSubMenu(context, 'programa'),
            ),
            ListTile(
              leading: Icon(Icons.room),
              title: Text('Espacios'),
              onTap: () => _showSubMenu(context, 'espacio'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Tipo Espacio'),
              onTap: () => _showSubMenu(context, 'tipo_espacio'),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Ubicación'),
              onTap: () => _showSubMenu(context, 'ubicacion'),
            ),
            ListTile(
              leading: Icon(Icons.add_location),
              title: Text('Municipio'),
              onTap: () => _showSubMenu(context, 'municipio'),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Departamento'),
              onTap: () => _showSubMenu(context, 'departamento'),
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('País'),
              onTap: () => _showSubMenu(context, 'pais'),
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Usuario'),
              onTap: () => _showSubMenu(context, 'usuario'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido al Sistema de Horarios'),
      ),
    );
  }
}
