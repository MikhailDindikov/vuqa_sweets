import 'package:get/get.dart';
import 'package:vuqa_sweets/modelevi/candy_model.dart';
import 'package:vuqa_sweets/uti/hran.dart';
import '../uti/veshi.dart';

class CrafterCt extends GetxController {
  List<CandyModel> confeti = [];

  (double, double) getNachaltiData() {
    confeti = [
      CandyModel('assets/decori/starry.png', 'Starry Lollipop', [2, 1, 3, 1],
          Hran.hran!.getBool('Starry Lollipop') ?? false),
      CandyModel('assets/decori/magical.png', 'Magical Chocolate', [3, 2, 2, 2],
          Hran.hran!.getBool('Magical Chocolate') ?? false),
      CandyModel('assets/decori/elven.png', 'Elven Dragee', [2, 2, 3, 4],
          Hran.hran!.getBool('Elven Dragee') ?? false),
      CandyModel('assets/decori/mooncake.png', 'Mooncake', [3, 4, 3, 4],
          Hran.hran!.getBool('Mooncake') ?? false),
      CandyModel('assets/decori/amulet.png', 'Amulet Candies', [4, 4, 4, 4],
          Hran.hran!.getBool('Amulet Candies') ?? false),
    ];

    return (12312.212, 23091.1);
  }

  (double, bool) craftCandy(int idex) {
    if (Veshi.fabBlue.value >= confeti[idex].tsennik[0] &&
        Veshi.fabGreen.value >= confeti[idex].tsennik[1] &&
        Veshi.fabOrange.value >= confeti[idex].tsennik[2] &&
        Veshi.fabRed.value >= confeti[idex].tsennik[3]) {
      confeti[idex].wasBought = true;
      Hran.hran!.setBool(confeti[idex].nazv, true);
      Veshi.setFabBlue(-confeti[idex].tsennik[0]);
      Veshi.setFabGreen(-confeti[idex].tsennik[1]);
      Veshi.setFabOrange(-confeti[idex].tsennik[2]);
      Veshi.setFabRed(-confeti[idex].tsennik[3]);
      update();
    }
    return (232.111, true);
  }
}
