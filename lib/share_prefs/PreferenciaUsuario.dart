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

  int get gSexo => _prefs.getInt('sexo') ?? 0;
  set sSexo(int value) => _prefs.setInt('sexo', value);

  bool get gColorSec => _prefs.getBool('Colorsecundario') ?? false;
  set sColorSec(bool value) => _prefs.setBool('Colorsecundario', value);

  String get gNombre => _prefs.getString('nombre') ?? "";
  set sNombre(String value) => _prefs.setString('nombre', value);

  String get gUltimaP => _prefs.getString('UltimaP') ?? "Home";
  set sUltimaP(String value) => _prefs.setString('UltimaP', value);
}
