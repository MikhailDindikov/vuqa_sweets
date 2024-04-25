import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class Fabrik {
   static late ui.Image redC;
  static late ui.Image orangleC;
  static late ui.Image blueC;
  static late ui.Image pinkC;
  static late ui.Image greenC;
  static late ui.Image ratC;
  static late ui.Image cookieC;

  static Future<void> getFabriki() async {
    redC = await _getImg('assets/decori/rc.png');
    orangleC = await _getImg('assets/decori/oc.png');
    blueC = await _getImg('assets/decori/bc.png');
    pinkC = await _getImg('assets/decori/pc.png');
    greenC = await _getImg('assets/decori/gc.png');
    ratC = await _getImg('assets/decori/rat.png');
    cookieC = await _getImg('assets/decori/cookie.png');
  }

  static Future<ui.Image> _getImg(String put) async {
    final data = await rootBundle.load(put);
    final list = Uint8List.view(data.buffer);
    final completer = Completer<ui.Image>();
    ui.decodeImageFromList(list, completer.complete);
    return completer.future;
  }
}