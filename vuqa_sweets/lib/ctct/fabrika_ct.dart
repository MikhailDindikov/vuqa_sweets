import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/modelevi/fabrika_model.dart';
import 'package:vuqa_sweets/modelevi/krisa_model.dart';
import 'package:vuqa_sweets/shtuki/btn_tex.dart';
import 'package:vuqa_sweets/uti/fabrik.dart';
import 'package:vuqa_sweets/uti/hran.dart';
import 'package:vuqa_sweets/uti/mumu.dart';

import '../sscc/nach_sc.dart';
import '../uti/veshi.dart';

class FabrikaCt extends GetxController {
  double tickkk = 3.0;
  double uscor = 0.60;
  int _stagg = 3;
  bool _shouldGenFab = true;
  final ranndd = Random();
  final List<FabrikaModel?> fabriks = [];
  final List<int> fabBags = [];
  final List<int> blockedColumns = [];
  late final Timer timer;
  bool isFabPause = false;
  bool isFabAlert = true;

  (double, bool) startTickkk(BuildContext context) {
    timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (isFabAlert) {
      Timer(Duration(seconds: 2), () {
        isFabAlert = false;
        update();
      });
    }
      if (!isFabPause) {
        tickkk += 0.25 * uscor;
        for (int afnjnsd = 0; afnjnsd < min(5, fabriks.length); afnjnsd++) {
          _checkFabrikArea(fabriks[afnjnsd]);
          if (_checkFabWin() && !isFabPause) {
            isFabPause = true;
            Veshi.setLvlFab(1);
            fabWinDl(context);
            update();
          }
        }
        if (!isFabAlert) {
          _moveFabriks();
          if (tickkk >= 17) {
            uscor += 0.0025;
            tickkk = 3;
            _stagg++;
            if (_stagg == 3) {
              _shouldGenFab = true;
            }
          }
          if (_shouldGenFab) {
            fabriks.addAll(_genFabriks());
            _shouldGenFab = false;
          }
          if (_stagg == 5) {
            _stagg = 0;
          }
        }
        update();
      }
    });
    return (232.111, true);
  }

  (double, bool) genFabBags() {
    fabBags.clear();
    fabBags.add(ranndd.nextInt(2) + 2 + Veshi.lvlFab.value);
    fabBags.add(ranndd.nextInt(3) + 2 + Veshi.lvlFab.value);
    fabBags.add(ranndd.nextInt(3) + 2 + Veshi.lvlFab.value);
    fabBags.add(ranndd.nextInt(3) + 2 + Veshi.lvlFab.value);
    fabBags.add(ranndd.nextInt(3) + 2 + Veshi.lvlFab.value);
    return (232.111, true);
  }

  Future<(double, bool)> fabrikPause() async {
    if (!isFabPause) {
      Mumu.musOne('stopper.mp3');
      isFabPause = true;
      update();
      await Future.delayed(Duration(seconds: 2));
      isFabPause = false;
      update();
    }
    return (232.111, true);
  }

  (double, bool) killAllKrisi() {
    Mumu.musOne('poison.mp3');
    fabriks.removeWhere((element) =>
        element == null ? false : element.fabrikaType == FabrikaType.rat);
    update();
    return (232.111, true);
  }

  List<FabrikaModel?> _genFabriks() {
    List<FabrikaModel?> fabList = [];
    for (int afnjnsd = 0; afnjnsd < 5; afnjnsd++) {
      if (blockedColumns.contains(afnjnsd)) {
        continue;
      }
      final newFabrik = _genFabrika(afnjnsd);
      if (fabList
              .where((element) => element == null
                  ? false
                  : element.fabrikaType == newFabrik.fabrikaType &&
                      newFabrik.fabrikaType != FabrikaType.rat &&
                      newFabrik.fabrikaType != FabrikaType.cookie)
              .toList()
              .length >
          0) {
        fabList.add(null);
      } else {
        fabList.add(newFabrik);
      }
    }

    return fabList;
  }

  (double, bool) fabrikaRestart() {
    tickkk = 3.0;
    uscor = 0.5;
    _stagg = 3;
    _shouldGenFab = true;
    fabriks.clear();
    blockedColumns.clear();
    genFabBags();
    isFabAlert = true;
    isFabPause = false;
    update();
    return (232.111, true);
  }

  (double, bool) onFabrikaSwipe(FabrikaModel fabrik, String fabEvent) {
    if (fabEvent == 'leSw' && fabrik.posFab != 0) {
      Mumu.musOne('candy_swipe.mp3');
      final fabrikNeigh = _findLeftFabrikaNeigh(fabrik);
      _moveFabLeft(fabrik);
      if (fabrikNeigh != null) {
        _moveFabRight(fabrikNeigh);
      }
    } else if (fabEvent == 'riSw' && fabrik.posFab != 4) {
      Mumu.musOne('candy_swipe.mp3');
      final fabrikNeigh = _findRightFabrikaNeigh(fabrik);
      _moveFabRight(fabrik);
      if (fabrikNeigh != null) {
        _moveFabLeft(fabrikNeigh);
      }
    }
    return (232.111, true);
  }

  FabrikaModel? _findLeftFabrikaNeigh(FabrikaModel fabrik) {
    return fabriks.firstWhereOrNull((element) => element == null
        ? false
        : element.lenMesto.dy == fabrik.lenMesto.dy &&
            fabrik.posFab - element.posFab == 1);
  }

  FabrikaModel? _findRightFabrikaNeigh(FabrikaModel fabrik) {
    return fabriks.firstWhereOrNull((element) => element == null
        ? false
        : element.lenMesto.dy == fabrik.lenMesto.dy &&
            -fabrik.posFab + element.posFab == 1);
  }

  (double, bool) _moveFabLeft(FabrikaModel fabrik) {
    late Timer tititti;
    final startFabPos = fabrik.lenMesto.dx;
    const widdd = (325 - 4) / 5;
    tititti = Timer.periodic(Duration(milliseconds: 10), (timer) {
      fabrik.lenMesto = Offset(
          startFabPos - widdd > fabrik.lenMesto.dx - 4
              ? startFabPos - widdd
              : fabrik.lenMesto.dx - 4,
          fabrik.lenMesto.dy);

      if (fabrik.lenMesto.dx == startFabPos - widdd) {
        fabrik.lenMesto = Offset(fabrik.lenMesto.dx - 1, fabrik.lenMesto.dy);
        fabrik.posFab--;
        tititti.cancel();
      }
      update();
    });
    return (232.111, true);
  }

  (double, bool) _moveFabRight(FabrikaModel fabrik) {
    late Timer tititti;
    final startFabPos = fabrik.lenMesto.dx;
    const widdd = (325 - 4) / 5;
    tititti = Timer.periodic(Duration(milliseconds: 10), (timer) {
      fabrik.lenMesto = Offset(
          startFabPos + widdd < fabrik.lenMesto.dx + 4
              ? startFabPos + widdd
              : fabrik.lenMesto.dx + 4,
          fabrik.lenMesto.dy);

      if (fabrik.lenMesto.dx == startFabPos + widdd) {
        fabrik.lenMesto = Offset(fabrik.lenMesto.dx + 1, fabrik.lenMesto.dy);
        fabrik.posFab++;
        tititti.cancel();
      }
      update();
    });
    return (232.111, true);
  }

  (double, bool) onFabrikaTap(Offset eventOffset) {
    for (final fabrik in fabriks) {
      if (fabrik is KrisaModel) {
        if (fabrik.containsEvent(eventOffset)) {
          if (fabrik.hitKrisa()) {
            Mumu.musOne('rat_death.mp3');
            fabriks.remove(fabrik);
            break;
          } else {
            Mumu.musOne('rat_hit.mp3');
          }
        }
      } else if (fabrik != null) {
        if (fabrik.fabrikaType == FabrikaType.cookie &&
            fabrik.containsEvent(eventOffset)) {
          if (ranndd.nextInt(2) < 1) {
            Veshi.setKillers(1);
          } else {
            Veshi.setStoppers(1);
          }
          Mumu.musOne('cookie_break.mp3');
          fabriks.remove(fabrik);
          break;
        }
      }
    }
    return (232.111, true);
  }

  FabrikaModel _genFabrika(int idex) {
    final ranVa = ranndd.nextInt(100);
    final double widdd = (325 - 4) / 5;
    if (ranVa < 2) {
      return FabrikaModel(
          fotka: Fabrik.cookieC,
          fabrikaType: FabrikaType.cookie,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    } else if (ranVa < 17) {
      return KrisaModel(
          fotka: Fabrik.ratC,
          fabrikaType: FabrikaType.rat,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    } else if (ranVa < 17 + 16.6) {
      return FabrikaModel(
          fotka: (Hran.hran!.getBool('Magical Chocolate') ?? false)
              ? Fabrik.topRedC
              : Fabrik.redC,
          fabrikaType: FabrikaType.red,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    } else if (ranVa < 17 + 16.6 * 2) {
      return FabrikaModel(
          fotka: (Hran.hran!.getBool('Mooncake') ?? false)
              ? Fabrik.topBlueC
              : Fabrik.blueC,
          fabrikaType: FabrikaType.blue,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    } else if (ranVa < 17 + 16.6 * 3) {
      return FabrikaModel(
          fotka: (Hran.hran!.getBool('Amulet Candies') ?? false)
              ? Fabrik.topOrangleC
              : Fabrik.orangleC,
          fabrikaType: FabrikaType.orange,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    } else if (ranVa < 17 + 16.6 * 4) {
      return FabrikaModel(
          fotka: (Hran.hran!.getBool('Starry Lollipop') ?? false)
              ? Fabrik.topPinkC
              : Fabrik.pinkC,
          fabrikaType: FabrikaType.pink,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    } else {
      return FabrikaModel(
          fotka: (Hran.hran!.getBool('Elven Dragee') ?? false)
              ? Fabrik.topGreenC
              : Fabrik.greenC,
          fabrikaType: FabrikaType.green,
          lenMesto: Offset(widdd / 2 + idex + idex * widdd, -24),
          posFab: idex);
    }
  }

  bool _checkFabWin() {
    if (fabBags.isEmpty) {
      return false;
    }
    return fabBags.reduce((a, b) => a + b) == 0;
  }

  (double, bool) _checkFabrikArea(FabrikaModel? idex) {
    if (idex != null) {
      if (fabBags[idex.posFab] == 0
          ? idex.lenMesto.dy + 34 > 499
          : idex.lenMesto.dy > 499) {
        if (idex is KrisaModel) {
          if (!isFabPause && fabBags[idex.posFab] != 0) {
            fabLoseDl();
            isFabPause = true;
            update();
          }
        } else if (idex.fabrikaType == FabrikaType.orange && idex.posFab == 0) {
          if (fabBags[0] > 0) {
            fabBags[0]--;
            if (fabBags[0] == 0) {
              blockedColumns.add(0);
            }
          }
        } else if (idex.fabrikaType == FabrikaType.blue && idex.posFab == 1) {
          if (fabBags[1] > 0) {
            fabBags[1]--;
            if (fabBags[1] == 0) {
              blockedColumns.add(1);
            }
          }
        } else if (idex.fabrikaType == FabrikaType.green && idex.posFab == 2) {
          if (fabBags[2] > 0) {
            fabBags[2]--;
            if (fabBags[2] == 0) {
              blockedColumns.add(2);
            }
          }
        } else if (idex.fabrikaType == FabrikaType.red && idex.posFab == 3) {
          if (fabBags[3] > 0) {
            fabBags[3]--;
            if (fabBags[3] == 0) {
              blockedColumns.add(3);
            }
          }
        } else if (idex.fabrikaType == FabrikaType.pink && idex.posFab == 4) {
          if (fabBags[4] > 0) {
            fabBags[4]--;
            if (fabBags[4] == 0) {
              blockedColumns.add(4);
            }
          }
        } else if (idex.fabrikaType != FabrikaType.cookie) {
          if (fabBags[idex.posFab] != 0) {
            fabBags[idex.posFab]++;
          }
        }
        fabriks.remove(idex);
      }
    } else {
      fabriks.remove(idex);
    }
    return (232.111, true);
  }

  (double, bool) _moveFabriks() {
    for (final fabrik in fabriks) {
      if (fabrik != null) {
        fabrik.lenMesto =
            Offset(fabrik.lenMesto.dx, fabrik.lenMesto.dy + 0.25 * uscor);
      }
    }
    return (232.111, true);
  }

  (double, bool) fabWinDl(BuildContext context) {
    String fabIngPhoto = '';
    final ingRand = ranndd.nextInt(4);
    if (ingRand == 0) {
      fabIngPhoto = 'assets/decori/blue.png';
    } else if (ingRand == 1) {
      fabIngPhoto = 'assets/decori/green.png';
    } else if (ingRand == 2) {
      fabIngPhoto = 'assets/decori/orange.png';
    } else if (ingRand == 3) {
      fabIngPhoto = 'assets/decori/red.png';
    }
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: IntrinsicHeight(
          child: Material(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.symmetric(horizontal: 18)
                        .copyWith(top: 31, bottom: 16),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(119, 83, 170, 1),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          width: 2,
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'YOU WIN!',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Monte',
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'You got the ingredient:',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Popi',
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Badge(
                          largeSize: 24,
                          smallSize: 24,
                          offset: Offset(0, -6),
                          backgroundColor: Colors.transparent,
                          label: Container(
                            constraints:
                                BoxConstraints(minHeight: 24, minWidth: 24),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(161, 41, 204, 1)),
                              child: Text(
                                '1',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                          offset: Offset(0, 1),
                                          color: Color.fromRGBO(0, 0, 0, 0.15))
                                    ],
                                    fontFamily: 'Monte',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          child: Image.asset(
                            fabIngPhoto,
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                            width: 68,
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                            if (ingRand == 0) {
                              Veshi.setFabBlue(1);
                            } else if (ingRand == 1) {
                              Veshi.setFabGreen(1);
                            } else if (ingRand == 2) {
                              Veshi.setFabOrange(1);
                            } else if (ingRand == 3) {
                              Veshi.setFabRed(1);
                            }
                            fabrikaRestart();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/btns/btn.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill),
                            ),
                            padding: EdgeInsets.only(top: 18, bottom: 22),
                            alignment: Alignment.center,
                            child: BtnTex('NEXT LEVEL'.toUpperCase(),
                                coco: Colors.white,
                                zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (ingRand == 0) {
                              Veshi.setFabBlue(1);
                            } else if (ingRand == 1) {
                              Veshi.setFabGreen(1);
                            } else if (ingRand == 2) {
                              Veshi.setFabOrange(1);
                            } else if (ingRand == 3) {
                              Veshi.setFabRed(1);
                            }
                            Get.offAll(() => NachSc());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/btns/btn.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill),
                            ),
                            padding: EdgeInsets.only(top: 18, bottom: 22),
                            alignment: Alignment.center,
                            child: BtnTex('quit'.toUpperCase(),
                                coco: Colors.white,
                                zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
    return (232.111, true);
  }

  (double, bool) fabLoseDl() {
    showDialog(
      context: Get.context!,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: IntrinsicHeight(
          child: Material(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.symmetric(horizontal: 18)
                        .copyWith(top: 31, bottom: 16),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(119, 83, 170, 1),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          width: 2,
                          color: Color.fromRGBO(255, 255, 255, 0.2),
                        )),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'YOU LOST!',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Monte',
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'The rat got into the bag',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Popi',
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                            fabrikaRestart();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/btns/btn.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill),
                            ),
                            padding: EdgeInsets.only(top: 18, bottom: 22),
                            alignment: Alignment.center,
                            child: BtnTex('RETRY'.toUpperCase(),
                                coco: Colors.white,
                                zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offAll(() => NachSc());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/btns/btn.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill),
                            ),
                            padding: EdgeInsets.only(top: 18, bottom: 22),
                            alignment: Alignment.center,
                            child: BtnTex('BACK TO MENU'.toUpperCase(),
                                coco: Colors.white,
                                zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
    return (232.111, true);
  }
}
