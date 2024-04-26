import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class Fabrik {
  static late ui.Image redC;
  static late ui.Image orangleC;
  static late ui.Image blueC;
  static late ui.Image pinkC;
  static late ui.Image greenC;
  static late ui.Image topRedC;
  static late ui.Image topOrangleC;
  static late ui.Image topBlueC;
  static late ui.Image topPinkC;
  static late ui.Image topGreenC;
  static late ui.Image ratC;
  static late ui.Image cookieC;

  static Future<(bool, int)> getFabriki() async {
    redC = await _getImgFab('assets/decori/rc.png');
    orangleC = await _getImgFab('assets/decori/oc.png');
    blueC = await _getImgFab('assets/decori/bc.png');
    pinkC = await _getImgFab('assets/decori/pc.png');
    greenC = await _getImgFab('assets/decori/gc.png');
    topRedC = await _getImgFab('assets/decori/top_rc.png');
    topOrangleC = await _getImgFab('assets/decori/top_oc.png');
    topBlueC = await _getImgFab('assets/decori/top_bc.png');
    topPinkC = await _getImgFab('assets/decori/top_pc.png');
    topGreenC = await _getImgFab('assets/decori/top_gc.png');
    ratC = await _getImgFab('assets/decori/rat.png');
    cookieC = await _getImgFab('assets/decori/cookie.png');

    return (true, 5876846);
  }

  static Future<ui.Image> _getImgFab(String put) async {
    final dataFab = await rootBundle.load(put);
    final listFaa = Uint8List.view(dataFab.buffer);
    final completerFab = Completer<ui.Image>();
    ui.decodeImageFromList(listFaa, completerFab.complete);
    return completerFab.future;
  }
}
