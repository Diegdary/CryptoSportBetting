import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

//
class PreferenciaUsuario {
  late SharedPreferences _prefs;

  initprefs() async {
    //un fiuter
    _prefs = await SharedPreferences
        .getInstance(); //aca todas las instacnias se inicializaran una vez
  }

  static final PreferenciaUsuario _instancia = PreferenciaUsuario
      .internal(); //internal es un metodo que va a tener ella misma

  factory PreferenciaUsuario() {
    //constructor con su unica instancia
    return _instancia;
  }

  PreferenciaUsuario.internal();

  int get gTelefono => _prefs.getInt('telefono') ?? 0;
  set sTelefono(int value) => _prefs.setInt('telefono', value);

  String get gNombre => _prefs.getString('nombre') ?? "r";
  set sNombre(String value) => _prefs.setString('nombre', value);

  String get gEmail => _prefs.getString('email') ?? "r";
  set sEmail(String value) => _prefs.setString('email', value);

  String get gGenero => _prefs.getString('Genero') ?? "r";
  set sGenero(String value) => _prefs.setString('Genero', value);

  String get gNacimiento => _prefs.getString('Nacimiento') ?? "r";
  set sNacimiento(String value) => _prefs.setString('Nacimiento', value);

  int get gID => _prefs.getInt('id') ?? 0;
  set sID(int value) => _prefs.setInt('id', value);
}
