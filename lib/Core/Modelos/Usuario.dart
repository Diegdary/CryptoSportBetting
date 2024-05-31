import 'package:apuestas/Core/Modelos/Apuestas.dart';

class Usuario {
  final String nombre;
  final int telefono;
  final String email;
  final String genero;
  final String nacimiento;
  final double balance;
  final List<Apuesta> apuestas;

  Usuario(
      {required this.nombre,
      required this.telefono,
      required this.email,
      required this.genero,
      required this.nacimiento,
      required this.balance,
      required this.apuestas});

  factory Usuario.fromJson(Map<String, dynamic> json) {
     var apuestaList = json["apuestas"] as List;
    List<Apuesta> apuestax = apuestaList.map((item) => Apuesta.fromJson(item)).toList();
    return Usuario(
        nombre: json["nombre"],
        telefono: json["telefono"],
        email: json["email"],
        genero: json["genero"],
        nacimiento: json["nacimiento"],
        balance: json["balance"],
        apuestas: apuestax );
  }
}
