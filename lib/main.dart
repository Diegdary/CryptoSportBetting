import 'dart:convert';

import 'package:apuestas/share_prefs/PreferenciaUsuario.dart';
import 'package:flutter/material.dart';
import 'package:apuestas/widgets/Myapp.dart';
import 'package:flutter/services.dart';

Map<String, dynamic> jsonDecoded = {};
List usersList = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenciaUsuario().initprefs();

  try {
    String jsonstring = await rootBundle.loadString("assets/data/Data.json");
    jsonDecoded = json.decode(jsonstring);
    usersList = jsonDecoded["Usuarios"];
  } catch (e) {
    print(e);
  }

  runApp(MyApp());
}
