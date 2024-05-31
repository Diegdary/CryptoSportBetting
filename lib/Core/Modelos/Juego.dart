class Juego {
  final String fecha;
  final String estado;
  final String deporte;
  final double multiplicador;
  final String equipo1;
  final String equipo2;
  

  Juego(
      {required this.fecha,
      required this.estado,
      required this.deporte,
      required this.multiplicador,
      required this.equipo1,
      required this.equipo2});

  factory Juego.fromJson(Map<String, dynamic> json) {
    return Juego(
        fecha: json["fecha"],
        estado: json["estado"],
        deporte: json["deporte"],
        multiplicador: json["multiplicador"],
        equipo1: json["equipo1"],
        equipo2: json["equipo2"]);
  }
}
