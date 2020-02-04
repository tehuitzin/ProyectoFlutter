
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
class _MunuProviders{
  List<dynamic>opciones =[];
  _MunuProviders(){
    cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final munuProviders = new _MunuProviders();