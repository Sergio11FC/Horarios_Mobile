import 'package:flutter/material.dart';
import '../sistema_horario/asignatura/ingresar_asignatura.dart';
import '../sistema_horario/asignatura/modificar_asignatura.dart';
import '../sistema_horario/asignatura/eliminar_asignatura.dart';
import '../sistema_horario/asignatura/ver_asignatura.dart';
import '../sistema_horario/criterio_docente/ingresar_criterio_docente.dart';
import '../sistema_horario/criterio_docente/modificar_criterio_docente.dart';
import '../sistema_horario/criterio_docente/eliminar_criterio_docente.dart';
import '../sistema_horario/criterio_docente/ver_criterio_docente.dart';
import '../sistema_horario/departamento/ingresar_departamento.dart';
import '../sistema_horario/departamento/modificar_departamento.dart';
import '../sistema_horario/departamento/eliminar_departamento.dart';
import '../sistema_horario/departamento/ver_departamento.dart';
import '../sistema_horario/docasig_horario/ingresar_docasig_horario.dart';
import '../sistema_horario/docasig_horario/modificar_docasig_horario.dart';
import '../sistema_horario/docasig_horario/eliminar_docasig_horario.dart';
import '../sistema_horario/docasig_horario/ver_docasig_horario.dart';
import '../sistema_horario/docente/ingresar_docente.dart';
import '../sistema_horario/docente/modificar_docente.dart';
import '../sistema_horario/docente/eliminar_docente.dart';
import '../sistema_horario/docente/ver_docente.dart';
import '../sistema_horario/espacio/ingresar_espacio.dart';
import '../sistema_horario/espacio/modificar_espacio.dart';
import '../sistema_horario/espacio/eliminar_espacio.dart';
import '../sistema_horario/espacio/ver_espacio.dart';
import '../sistema_horario/inclusion_social/ingresar_inclusion_social.dart';
import '../sistema_horario/inclusion_social/modificar_inclusion_social.dart';
import '../sistema_horario/inclusion_social/eliminar_inclusion_social.dart';
import '../sistema_horario/inclusion_social/ver_inclusion_social.dart';
import '../sistema_horario/municipio/ingresar_municipio.dart';
import '../sistema_horario/municipio/modificar_municipio.dart';
import '../sistema_horario/municipio/eliminar_municipio.dart';
import '../sistema_horario/municipio/ver_municipio.dart';
import '../sistema_horario/pais/ingresar_pais.dart';
import '../sistema_horario/pais/modificar_pais.dart';
import '../sistema_horario/pais/eliminar_pais.dart';
import '../sistema_horario/pais/ver_pais.dart';
import '../sistema_horario/programa/ingresar_programa.dart';
import '../sistema_horario/programa/modificar_programa.dart';
import '../sistema_horario/programa/eliminar_programa.dart';
import '../sistema_horario/programa/ver_programa.dart';
import '../sistema_horario/tipo_docente/ingresar_tipo_docente.dart';
import '../sistema_horario/tipo_docente/modificar_tipo_docente.dart';
import '../sistema_horario/tipo_docente/eliminar_tipo_docente.dart';
import '../sistema_horario/tipo_docente/ver_tipo_docente.dart';
import '../sistema_horario/tipo_espacio/ingresar_tipo_espacio.dart';
import '../sistema_horario/tipo_espacio/modificar_tipo_espacio.dart';
import '../sistema_horario/tipo_espacio/eliminar_tipo_espacio.dart';
import '../sistema_horario/tipo_espacio/ver_tipo_espacio.dart';
import '../sistema_horario/ubicacion/ingresar_ubicacion.dart';
import '../sistema_horario/ubicacion/modificar_ubicacion.dart';
import '../sistema_horario/ubicacion/eliminar_ubicacion.dart';
import '../sistema_horario/ubicacion/ver_ubicacion.dart';
import '../sistema_horario/usuario/login_usuario.dart';
import '../sistema_horario/usuario/usuario_cerrar_sesion.dart';
import '../sistema_horario/usuario/usuario_iniciar_sesion.dart';

class Rutas {
  static const String ingresarDocente = '/ingresar_docente';
  static const String modificarDocente = '/modificar_docente';
  static const String eliminarDocente = '/eliminar_docente';
  static const String verDocente = '/ver_docente';

  static const String ingresarCriterioDocente = '/ingresar_criterio_docente';
  static const String modificarCriterioDocente = '/modificar_criterio_docente';
  static const String eliminarCriterioDocente = '/eliminar_criterio_docente';
  static const String verCriterioDocente = '/ver_criterio_docente';

  static const String ingresarDepartamento = '/ingresar_departamento';
  static const String modificarDepartamento = '/modificar_departamento';
  static const String eliminarDepartamento = '/eliminar_departamento';
  static const String verDepartamento = '/ver_departamento';

  static const String ingresarDocasigHorario = '/ingresar_docasig_horario';
  static const String modificarDocasigHorario = '/modificar_docasig_horario';
  static const String eliminarDocasigHorario = '/eliminar_docasig_horario';
  static const String verDocasigHorario = '/ver_docasig_horario';

  static const String ingresarEspacio = '/ingresar_espacio';
  static const String modificarEspacio = '/modificar_espacio';
  static const String eliminarEspacio = '/eliminar_espacio';
  static const String verEspacio = '/ver_espacio';

  static const String ingresarInclusionSocial = '/ingresar_inclusion_social';
  static const String modificarInclusionSocial = '/modificar_inclusion_social';
  static const String eliminarInclusionSocial = '/eliminar_inclusion_social';
  static const String verInclusionSocial = '/ver_inclusion_social';

  static const String ingresarMunicipio = '/ingresar_municipio';
  static const String modificarMunicipio = '/modificar_municipio';
  static const String eliminarMunicipio = '/eliminar_municipio';
  static const String verMunicipio = '/ver_municipio';

  static const String ingresarPais = '/ingresar_pais';
  static const String modificarPais = '/modificar_pais';
  static const String eliminarPais = '/eliminar_pais';
  static const String verPais = '/ver_pais';

  static const String ingresarPrograma = '/ingresar_programa';
  static const String modificarPrograma = '/modificar_programa';
  static const String eliminarPrograma = '/eliminar_programa';
  static const String verPrograma = '/ver_programa';

  static const String ingresarAsignatura = '/ingresar_asignatura';
  static const String modificarAsignatura = '/modificar_asignatura';
  static const String eliminarAsignatura = '/eliminar_asignatura';
  static const String verAsignatura = '/ver_asignatura';

  static const String ingresarTipoDocente = '/ingresar_tipo_docente';
  static const String modificarTipoDocente = '/modificar_tipo_docente';
  static const String eliminarTipoDocente = '/eliminar_tipo_docente';
  static const String verTipoDocente = '/ver_tipo_docente';

  static const String ingresarTipoEspacio = '/ingresar_tipo_espacio';
  static const String modificarTipoEspacio = '/modificar_tipo_espacio';
  static const String eliminarTipoEspacio = '/eliminar_tipo_espacio';
  static const String verTipoEspacio = '/ver_tipo_espacio';

  static const String ingresarUbicacion = '/ingresar_ubicacion';
  static const String modificarUbicacion = '/modificar_ubicacion';
  static const String eliminarUbicacion = '/eliminar_ubicacion';
  static const String verUbicacion = '/ver_ubicacion';

  static const String loginUsuario = '/login_usuario';
  static const String usuarioIniciarSesion = '/usuario_iniciar_sesion';
  static const String usuarioCerrarSesion = '/usuario_cerrar_sesion';

  static const String iniciarSesion = '/iniciar_sesion';
  static const String cerrarSesion = '/cerrar_sesion';
}
