import 'package:hive/hive.dart';

class DataBase {
  List listaSillas = [];
  final _boxdeSillas = Hive.box("adri");

  void cargarDatos() {
    listaSillas = _boxdeSillas.get("adri", defaultValue: []);
    print("Datos cargados correctamente desde Hive: $listaSillas");
  }

  void actualizarDatos() {
    _boxdeSillas.put("adri", listaSillas);
  }

  void EliminarLista(String nom) {
    listaSillas.removeWhere((silla) => silla[0] == nom);
  }

  void ActualizarLista(String nom, String nuevoNombre, String nuevaDescripcion,String nuevoPrecio) {
    for (var silla in listaSillas) {
      if (silla[0] == nom) {
        // Comprueba si el nombre coincide
        silla[0] = nuevoNombre; // Actualiza el nombre
        silla[1] = nuevaDescripcion; // Actualiza la descripción
        silla[2] = nuevoPrecio; // Actualiza el precio
        break; // Termina el bucle después de actualizar la silla
      }
    }
    print(listaSillas);
  }
}
