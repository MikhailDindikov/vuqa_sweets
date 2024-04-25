import 'package:get/get.dart';
import 'package:vuqa_sweets/uti/hran.dart';

class Veshi {
  static RxInt fabKillers = 0.obs;
  static RxInt fabStoppers = 0.obs;
  static RxInt fabRed = 0.obs;
  static RxInt fabGreen = 0.obs;
  static RxInt fabOrange = 0.obs;
  static RxInt fabBlue = 0.obs;

  static void moemRuki() {
    fabKillers.value = Hran.hran!.getInt('killers') ?? 0;
    fabStoppers.value = Hran.hran!.getInt('stoppers') ?? 0;
    fabRed.value = Hran.hran!.getInt('fabRed') ?? 0;
    fabGreen.value = Hran.hran!.getInt('fabGreen') ?? 0;
    fabOrange.value = Hran.hran!.getInt('fabOrange') ?? 0;
    fabBlue.value = Hran.hran!.getInt('fabBlue') ?? 0;
  }

  static void setKillers(int killersSum) {
    fabKillers.value += killersSum;
    Hran.hran!.setInt('killers', fabKillers.value);
  }

  static void setStoppers(int stoppersSum) {
    fabStoppers.value += stoppersSum;
    Hran.hran!.setInt('stoppers', fabStoppers.value);
  }

  static void setFabRed(int fabRedSum) {
    fabRed.value += fabRedSum;
    Hran.hran!.setInt('fabRed', fabRed.value);
  }

  static void setFabGreen(int fabGreenSum) {
    fabGreen.value += fabGreenSum;
    Hran.hran!.setInt('fabGreen', fabGreen.value);
  }

  static void setFabBlue(int fabBlueSum) {
    fabBlue.value += fabBlueSum;
    Hran.hran!.setInt('fabBlue', fabBlue.value);
  }

  static void setFabOrange(int fabOrangeSum) {
    fabOrange.value += fabOrangeSum;
    Hran.hran!.setInt('fabOrange', fabOrange.value);
  }
}
