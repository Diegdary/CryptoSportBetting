import "Equipo.dart";

class Deporte {
  final String nombre;
  final List<Equipo> equipo;

  Deporte({required this.nombre, required this.equipo});

  factory Deporte.fromJson(Map<String, dynamic> json) {
    var equipolist = json["equipo"] as List;
    List<Equipo> equipos =
        equipolist.map((item) => Equipo.fromJson(item)).toList();
    return Deporte(nombre: json["nombre"], equipo: equipos);
  }
}
