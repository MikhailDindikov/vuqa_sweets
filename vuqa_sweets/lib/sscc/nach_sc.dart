import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/shtuki/btn_tex.dart';
import 'package:vuqa_sweets/sscc/crafter_sc.dart';
import 'package:vuqa_sweets/sscc/pokupki_sc.dart';
import 'package:vuqa_sweets/uti/mumu.dart';

import '../ctct/glo_ct.dart';
import '../uti/Veshi.dart';
import '../uti/hran.dart';
import 'fabrica_sc.dart';
import 'nastr_sc.dart';

class NachSc extends StatefulWidget {
  final (int, String) fgofjgkfljkfl;
  final Offset dflknbvvmmxcvmnxcv;
  final bool e0fi329393929329;

  const NachSc(
      {super.key,
      this.fgofjgkfljkfl = (323, ''),
      this.dflknbvvmmxcvmnxcv = Offset.zero,
      this.e0fi329393929329 = false});

  @override
  State<NachSc> createState() => _NachScState();
}

class _NachScState extends State<NachSc> {
  final rferrersdfsd = Get.put(GloCt());
  @override
  void initState() {
    super.initState();
    if (Hran.hran!.getBool('musi') ?? true) {
      Mumu.goMu('fon_mus.mp3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GloCt>(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg/Home.png'),
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22).copyWith(top: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => NastrSc());
                            },
                            child: Image.asset(
                              'assets/decori/set.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: infDl,
                            child: Image.asset(
                              'assets/decori/inf.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
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
                                child: Obx(
                                  () => Text(
                                    Veshi.fabKillers.value.toString(),
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15))
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
                              'assets/decori/kill.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
                          ),
                          SizedBox(
                            height: 8,
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
                                child: Obx(
                                  () => Text(
                                    Veshi.fabStoppers.value.toString(),
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15))
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
                              'assets/decori/stop.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                child: Obx(
                                  () => Text(
                                    Veshi.fabBlue.value.toString(),
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15))
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
                              'assets/decori/blue.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
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
                                child: Obx(
                                  () => Text(
                                    Veshi.fabGreen.value.toString(),
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15))
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
                              'assets/decori/green.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
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
                                child: Obx(
                                  () => Text(
                                    Veshi.fabOrange.value.toString(),
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15))
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
                              'assets/decori/orange.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
                          ),
                          Badge(
                            largeSize: 26,
                            smallSize: 26,
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
                                child: Obx(
                                  () => Text(
                                    Veshi.fabRed.value.toString(),
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15))
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
                              'assets/decori/red.png',
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.high,
                              width: 68,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => FabrikaSc());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btns/play_btn.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill),
                          ),
                          padding: EdgeInsets.only(top: 18, bottom: 22),
                          alignment: Alignment.center,
                          child: BtnTex('PLAY',
                              coco: Colors.white,
                              zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => CrafterSc(),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btns/gl_btn.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill),
                          ),
                          padding: EdgeInsets.only(top: 18, bottom: 22),
                          alignment: Alignment.center,
                          child: BtnTex('Candy ingredients'.toUpperCase(),
                              coco: Colors.white,
                              zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => PokupkiSc());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btns/gl_btn.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill),
                          ),
                          padding: EdgeInsets.only(top: 18, bottom: 22),
                          alignment: Alignment.center,
                          child: BtnTex('SHOP',
                              coco: Colors.white,
                              zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  void infDl() {
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.all(16),
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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'RULES',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: Get.back,
                              child: Image.asset(
                                'assets/decori/clos.png',
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                                width: 68,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          "Sort the candies into all the bags and get the ingredients to create magical treats. Candies can be moved between conveyor belts. Crush the rats so they don't eat the candy in the bags. Collect cookies, they give bonuses",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Popi',
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
