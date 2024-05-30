class Equipo {
  final String nombre;

  Equipo({required this.nombre});

  factory Equipo.fromJson(Map<String, dynamic> json) {
    return Equipo(nombre: json["nombre"]);
  }
}
