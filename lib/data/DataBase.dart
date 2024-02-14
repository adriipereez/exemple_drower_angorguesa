import 'package:exemple_drower_angorguesa/paginas/Silla.dart';
import 'package:hive/hive.dart';

class DataBase{

    List<Silla> listaSillas = [];
    final _boxdeSillas = Hive.box("adri");
    
  void cargardatos() {
    listaSillas = _boxdeSillas.get("adri");
  }

  void actualizardatos() {
  try {
    _boxdeSillas.put("adri", listaSillas);
    print("Datos actualizados correctamente en Hive.");
  } catch (e) {
    print("Error al actualizar datos en Hive: $e");
  }
}
}