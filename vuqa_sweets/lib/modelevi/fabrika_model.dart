import 'package:flutter/material.dart';
import 'dart:ui' as ui;

enum FabrikaType { rat, red, green, orange, blue, pink, cookie }

class FabrikaModel {
  final ui.Image fotka;
  final FabrikaType fabrikaType;
  Offset lenMesto;
  int posFab;

  FabrikaModel(
      {required this.fotka,
      required this.fabrikaType,
      required this.lenMesto,
      required this.posFab});

  bool containsEvent(Offset localOff) {
    final path = Path();
    path.addRect(
      Rect.fromCenter(center: lenMesto, width: 48, height: 48),
    );
    return path.contains(localOff);
  }

  void drawFabrik(Canvas canvas) {
    canvas.save();
    canvas.translate(lenMesto.dx, lenMesto.dy);
    double fabScale = 1;
    // if (499 - lenMesto.dy + 12 < 54) {
    //   fabScale = (499 - lenMesto.dy) /48;
    // }
    canvas.translate(-24 * fabScale, -24 * fabScale);
    canvas.scale((fabScale * 48) / fotka.width, (fabScale * 48) / fotka.height);
    canvas.drawImage(fotka, Offset.zero, Paint());
    canvas.restore();
  }
}
