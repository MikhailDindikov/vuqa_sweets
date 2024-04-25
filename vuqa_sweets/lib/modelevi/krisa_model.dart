import 'package:vuqa_sweets/modelevi/fabrika_model.dart';

class KrisaModel extends FabrikaModel {
  int ratLifes = 3;

  KrisaModel({
    required super.fotka,
    required super.fabrikaType,
    required super.lenMesto,
    required super.posFab,
  });

  bool hitKrisa() {
    ratLifes--;

    if (ratLifes == 0) {
      return true;
    }
    return false;
  }
}
