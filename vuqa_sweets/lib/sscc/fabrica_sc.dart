import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/ctct/fabrika_ct.dart';
import 'package:vuqa_sweets/modelevi/fabrika_model.dart';
import 'package:vuqa_sweets/sscc/nach_sc.dart';
import 'package:vuqa_sweets/uti/hran.dart';
import 'package:vuqa_sweets/uti/mumu.dart';

import '../shtuki/btn_tex.dart';
import '../uti/Veshi.dart';

class FabrikaSc extends StatefulWidget {
  const FabrikaSc({super.key});

  @override
  State<FabrikaSc> createState() => _FabrikaScState();
}

class _FabrikaScState extends State<FabrikaSc> {
  final fabritaCt = Get.put(FabrikaCt());

  Offset eventOffset = Offset.zero;
  bool doneEvent = false;
  FabrikaModel? fabrik;

  @override
  void initState() {
    fabritaCt.genFabBags();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fabritaCt.startTickkk(context);
    });
  }

  @override
  void dispose() {
    fabritaCt.timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg/Common.png'),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            child: GetBuilder(
              init: fabritaCt,
              builder: (_) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (Veshi.fabKillers.value != 0) {
                                  fabritaCt.killAllKrisi();
                                  Veshi.setKillers(-1);
                                }
                              },
                              child: Badge(
                                largeSize: 24,
                                smallSize: 24,
                                offset: Offset(0, -6),
                                backgroundColor: Colors.transparent,
                                label: Container(
                                  constraints: BoxConstraints(
                                      minHeight: 24, minWidth: 24),
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
                                    child: Obx(
                                      () => Text(
                                        Veshi.fabKillers.value.toString(),
                                        style: TextStyle(
                                            shadows: [
                                              Shadow(
                                                  offset: Offset(0, 1),
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.15))
                                            ],
                                            fontFamily: 'Monte',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/decori/gl_kill.png',
                                  width: 68,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (Veshi.fabStoppers.value != 0) {
                                  fabritaCt.fabrikPause();
                                  Veshi.setStoppers(-1);
                                }
                              },
                              child: Badge(
                                largeSize: 24,
                                smallSize: 24,
                                offset: Offset(0, -6),
                                backgroundColor: Colors.transparent,
                                label: Container(
                                  constraints: BoxConstraints(
                                      minHeight: 24, minWidth: 24),
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
                                    child: Obx(
                                      () => Text(
                                        Veshi.fabStoppers.value.toString(),
                                        style: TextStyle(
                                            shadows: [
                                              Shadow(
                                                  offset: Offset(0, 1),
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.15))
                                            ],
                                            fontFamily: 'Monte',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/decori/gl_stop.png',
                                  width: 68,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            fabritaCt.isFabPause = true;
                            fabritaCt.update();
                            fabPauseDl();
                          },
                          child: Image.asset(
                            'assets/decori/pause.png',
                            width: 68,
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 570,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          height: 570,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                height: 499,
                                width: 327,
                                padding: EdgeInsets.all(1.3),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.45)),
                                child: ClipRect(
                                  child: CustomPaint(
                                    painter: Fabrika(
                                      tickkk: fabritaCt.tickkk,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 480,
                                child: SizedBox(
                                  width: 327,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            fabritaCt.fabBags[0] == 0
                                                ? 'assets/decori/yellow_closed.png'
                                                : 'assets/decori/yellow_bag.png',
                                            width: 61,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            fabritaCt.fabBags.isEmpty
                                                ? ''
                                                : fabritaCt.fabBags[0]
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            fabritaCt.fabBags[1] == 0
                                                ? 'assets/decori/blue_closed.png'
                                                : 'assets/decori/blue_bag.png',
                                            width: 61,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            fabritaCt.fabBags.isEmpty
                                                ? ''
                                                : fabritaCt.fabBags[1]
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            fabritaCt.fabBags[2] == 0
                                                ? 'assets/decori/green_closed.png'
                                                : 'assets/decori/green_bag.png',
                                            width: 61,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            fabritaCt.fabBags.isEmpty
                                                ? ''
                                                : fabritaCt.fabBags[2]
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            fabritaCt.fabBags[3] == 0
                                                ? 'assets/decori/red_closed.png'
                                                : 'assets/decori/red_bag.png',
                                            width: 61,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            fabritaCt.fabBags.isEmpty
                                                ? ''
                                                : fabritaCt.fabBags[3]
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            fabritaCt.fabBags[4] == 0
                                                ? 'assets/decori/pink_closed.png'
                                                : 'assets/decori/pink_bag.png',
                                            width: 61,
                                            fit: BoxFit.fill,
                                            filterQuality: FilterQuality.high,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            fabritaCt.fabBags.isEmpty
                                                ? ''
                                                : fabritaCt.fabBags[4]
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onPanDown: (details) {
                            fabritaCt.onFabrikaTap(details.localPosition);
                            eventOffset = details.localPosition;
                            fabrik = fabritaCt.fabriks.firstWhereOrNull(
                                (element) => element == null
                                    ? false
                                    : element.fabrikaType == FabrikaType.rat ||
                                            element.fabrikaType ==
                                                FabrikaType.cookie
                                        ? false
                                        : element.containsEvent(eventOffset));
                          },
                          onPanEnd: (details) {
                            eventOffset = Offset.zero;
                            fabrik = null;
                            doneEvent = false;
                          },
                          onHorizontalDragUpdate: (details) async {
                            if (!doneEvent) {
                              if (eventOffset.dx - details.localPosition.dx >
                                  2) {
                                if (fabrik != null) {
                                  doneEvent = true;
                                  fabritaCt.onFabrikaSwipe(fabrik!, 'leSw');
                                }
                              } else if (eventOffset.dx -
                                      details.localPosition.dx <
                                  -2) {
                                if (fabrik != null) {
                                  doneEvent = true;
                                  fabritaCt.onFabrikaSwipe(fabrik!, 'riSw');
                                }
                              }
                            }
                          },
                          onHorizontalDragEnd: (details) {
                            eventOffset = Offset.zero;
                            fabrik = null;
                            doneEvent = false;
                          },
                          child: Container(
                            height: 499,
                            width: 327,
                            padding: EdgeInsets.all(1.3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.45)),
                            child: ClipRect(
                              child: CustomPaint(
                                painter: ForegroundFabrika(
                                    fabriks: fabritaCt.fabriks),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 488,
                          child: SizedBox(
                            width: 327,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/decori/yellow_front.png',
                                  width: 61,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                                Image.asset(
                                  'assets/decori/blue_front.png',
                                  width: 61,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                                Image.asset(
                                  'assets/decori/green_front.png',
                                  width: 61,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                                Image.asset(
                                  'assets/decori/red_front.png',
                                  width: 61,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                                Image.asset(
                                  'assets/decori/pink_front.png',
                                  width: 61,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void fabPauseDl() {
    final RxBool mumu = (Hran.hran!.getBool('musi') ?? true).obs;
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: IntrinsicHeight(
          child: Material(
              color: Colors.transparent,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: GestureDetector(
                                onTap: () {
                                  mumu.toggle();
                                  if (mumu.value) {
                                    Mumu.goMu('fon_mus.mp3');
                                    Hran.hran!.setBool('musi', true);
                                  } else {
                                    Mumu.stoMu();
                                    Hran.hran!.setBool('musi', false);
                                  }
                                },
                                child: Obx(
                                  () => Image.asset(
                                    mumu.value
                                        ? 'assets/decori/mus.png'
                                        : 'assets/decori/off_mus.png',
                                    width: 68,
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: Get.back,
                              child: Image.asset(
                                'assets/decori/clos_gl.png',
                                width: 68,
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'PAUSE',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: 'Monte',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                                fabritaCt.fabrikaRestart();
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
                    ),
                  ],
                ),
              )),
        ),
      ),
    ).then((value) {
      fabritaCt.isFabPause = false;
      fabritaCt.update();
    });
  }
}

class ForegroundFabrika extends CustomPainter {
  final List<FabrikaModel?> fabriks;

  ForegroundFabrika({super.repaint, required this.fabriks});
  @override
  void paint(Canvas canvas, Size size) {
    for (final fabrik in fabriks) {
      if (fabrik != null) {
        fabrik.drawFabrik(canvas);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;
}

class Fabrika extends CustomPainter {
  final double tickkk;

  Fabrika({super.repaint, required this.tickkk});

  @override
  void paint(Canvas canvas, Size size) {
    final widdd = (size.width - 4) / 5;
    _drawHueta(canvas, widdd, size.height, 0, true, false);
    _drawHueta(canvas, widdd, size.height, 1, false, false);
    _drawHueta(canvas, widdd, size.height, 2, false, false);
    _drawHueta(canvas, widdd, size.height, 3, false, false);
    _drawHueta(canvas, widdd, size.height, 4, false, true);
    _drawPoloski(canvas, widdd, size.height, 0, tickkk);
    _drawPoloski(canvas, widdd, size.height, 1, tickkk);
    _drawPoloski(canvas, widdd, size.height, 2, tickkk);
    _drawPoloski(canvas, widdd, size.height, 3, tickkk);
    _drawPoloski(canvas, widdd, size.height, 4, tickkk);
  }

  _drawHueta(Canvas canvas, double widdd, double hehe, int idex, bool isLe,
      bool isRi) {
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromCenter(
            center: Offset(widdd / 2 + idex + idex * widdd, hehe / 2),
            width: widdd,
            height: hehe),
        topLeft: isLe ? Radius.circular(8.45) : Radius.zero,
        bottomLeft: isLe ? Radius.circular(8.45) : Radius.zero,
        topRight: isRi ? Radius.circular(8.45) : Radius.zero,
        bottomRight: isRi ? Radius.circular(8.45) : Radius.zero,
      ),
      Paint()
        ..style = PaintingStyle.fill
        ..shader = LinearGradient(
          colors: [
            Color.fromRGBO(182, 184, 223, 1),
            Color.fromRGBO(182, 184, 223, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Rect.fromCenter(
            center: Offset(widdd / 2 + idex + idex * widdd, hehe / 2),
            width: widdd,
            height: hehe)),
    );
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromCenter(
            center: Offset(widdd / 2 + idex + idex * widdd, hehe / 2),
            width: widdd,
            height: hehe),
        topLeft: isLe ? Radius.circular(8.45) : Radius.zero,
        bottomLeft: isLe ? Radius.circular(8.45) : Radius.zero,
        topRight: isRi ? Radius.circular(8.45) : Radius.zero,
        bottomRight: isRi ? Radius.circular(8.45) : Radius.zero,
      ),
      Paint()
        ..style = PaintingStyle.fill
        ..shader = LinearGradient(
          colors: [
            Color.fromRGBO(0, 0, 0, 0),
            Color.fromRGBO(0, 0, 0, 0.2),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Rect.fromCenter(
            center: Offset(widdd / 2 + idex + idex * widdd, hehe / 2),
            width: widdd,
            height: hehe)),
    );
  }

  _drawPoloski(
      Canvas canvas, double widdd, double hehe, int idex, double tickkk) {
    double stepe = tickkk;
    while (stepe < hehe - 2) {
      canvas.drawLine(
        Offset(widdd / 2 + idex + idex * widdd - (widdd - 4) / 2, stepe - 0.5),
        Offset(widdd / 2 + idex + idex * widdd + (widdd - 4) / 2, stepe - 0.5),
        Paint()
          ..strokeWidth = 1
          ..color = Colors.black,
      );
      canvas.drawLine(
        Offset(widdd / 2 + idex + idex * widdd - (widdd - 4) / 2, stepe + 0.5),
        Offset(widdd / 2 + idex + idex * widdd + (widdd - 4) / 2, stepe + 0.5),
        Paint()
          ..strokeWidth = 1
          ..color = Colors.white,
      );

      stepe += 14;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      this != oldDelegate;
}
