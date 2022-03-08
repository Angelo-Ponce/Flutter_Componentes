import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    // Leer cadena Json
    final data = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = _MenuProvider();
