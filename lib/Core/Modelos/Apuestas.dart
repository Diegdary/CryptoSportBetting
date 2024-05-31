import 'package:apuestas/Core/Modelos/Juego.dart';

class Apuesta {
  final double v_e_apuesta;
  final double vganancia;
  final double smultiplicador;
  final List<Juego> juegos;

  Apuesta(
      {required this.v_e_apuesta,
      required this.vganancia,
      required this.smultiplicador,
      required this.juegos});

  factory Apuesta.fromJson(Map<String, dynamic> json) {
    var juegoList = json["juego"] as List;
    List<Juego> juegox = juegoList.map((item) => Juego.fromJson(item)).toList();
    return Apuesta(
        v_e_apuesta: json["v_e_apuesta"],
        vganancia: json["vganancia"],
        smultiplicador: json["smultiplicador"],
        juegos: juegox);
  }
}
