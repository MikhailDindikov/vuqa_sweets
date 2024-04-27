import 'package:get/get.dart';
import 'package:vuqa_sweets/uti/hran.dart';

class Veshi {
  static RxInt fabKillers = 0.obs;
  static RxInt fabStoppers = 0.obs;
  static RxInt fabRed = 0.obs;
  static RxInt fabGreen = 0.obs;
  static RxInt fabOrange = 0.obs;
  static RxInt fabBlue = 0.obs;
  static RxInt lvlFab = 0.obs;

  static (bool, int) moemRuki() {
    fabKillers.value = Hran.hran!.getInt('killers') ?? 0;
    fabStoppers.value = Hran.hran!.getInt('stoppers') ?? 0;
    fabRed.value = Hran.hran!.getInt('fabRed') ?? 0;
    fabGreen.value = Hran.hran!.getInt('fabGreen') ?? 0;
    fabOrange.value = Hran.hran!.getInt('fabOrange') ?? 0;
    fabBlue.value = Hran.hran!.getInt('fabBlue') ?? 0;
    lvlFab.value = Hran.hran!.getInt('lvlFab') ?? 1;
    return (true, 5876846);
  }

  static bool moemRRuki() {
    fabKillers.value = Hran.hran!.getInt('killers') ?? 0;
    fabStoppers.value = Hran.hran!.getInt('stoppers') ?? 0;
    fabRed.value = Hran.hran!.getInt('fabRed') ?? 0;
    fabGreen.value = Hran.hran!.getInt('fabGreen') ?? 0;
    fabOrange.value = Hran.hran!.getInt('fabOrange') ?? 0;
    fabBlue.value = Hran.hran!.getInt('fabBlue') ?? 0;
    return false;
  }

  static (bool, int) setLvlFab(int lvlFabSum) {
    lvlFab.value += lvlFabSum;
    Hran.hran!.setInt('lvlFab', lvlFab.value);
    return (true, 5876846);
  }

  static (bool, int) setKillers(int killersSum) {
    fabKillers.value += killersSum;
    Hran.hran!.setInt('killers', fabKillers.value);
    return (true, 5876846);
  }

  static (bool, int) setStoppers(int stoppersSum) {
    fabStoppers.value += stoppersSum;
    Hran.hran!.setInt('stoppers', fabStoppers.value);
    return (true, 5876846);
  }

  static (bool, int) setFabRed(int fabRedSum) {
    fabRed.value += fabRedSum;
    Hran.hran!.setInt('fabRed', fabRed.value);
    return (true, 5876846);
  }

  static (bool, int) setFabGreen(int fabGreenSum) {
    fabGreen.value += fabGreenSum;
    Hran.hran!.setInt('fabGreen', fabGreen.value);
    return (true, 5876846);
  }

  static (bool, int) setFabBlue(int fabBlueSum) {
    fabBlue.value += fabBlueSum;
    Hran.hran!.setInt('fabBlue', fabBlue.value);
    return (true, 5876846);
  }

  static (bool, int) setFabOrange(int fabOrangeSum) {
    fabOrange.value += fabOrangeSum;
    Hran.hran!.setInt('fabOrange', fabOrange.value);
    return (true, 5876846);
  }
}
