import "Equipo.dart";

class Deporte {
  final String nombre;
  final List<Equipo> liga;

  Deporte({required this.nombre, required this.liga});

  factory Deporte.fromJson(Map<String, dynamic> json) {
    return Deporte(nombre: json["nombre"], liga: json["liga"]);
  }
}
