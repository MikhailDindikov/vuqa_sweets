import 'dart:ui';

import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/main.dart';
import 'package:vuqa_sweets/uti/veshi.dart';

import '../shtuki/btn_tex.dart';

class PokupkiSc extends StatefulWidget {
  final Offset c985454389;
  final Offset c985454381;
  final Offset c985454382;
  final Offset c985454383;
  final Offset c985454384;
  const PokupkiSc(
      {super.key,
      this.c985454389 = Offset.infinite,
      this.c985454381 = Offset.infinite,
      this.c985454382 = Offset.infinite,
      this.c985454383 = Offset.infinite,
      this.c985454384 = Offset.infinite});

  @override
  State<PokupkiSc> createState() => _PokupkiScState();
}

class _PokupkiScState extends State<PokupkiSc> {
  final RxBool _miniLo = false.obs;
  final RxBool _midLo = false.obs;
  final RxBool _megaLo = false.obs;

  final DADADA hdjskhsdhs6r3retertdjytrj3rte4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjrtwerwtjyhrfe3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdrtewwerjjhtrfe3ter4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdgfdsgsjjytgref34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdgw5rgjjtjyther3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdgdfgsdfjyhrfetertgdj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhssgfdgsdfgdjhygrgdbdfj3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhshtyhfghdjgrbdfj3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjhytgrfej3eryrthtyhte4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjjjytgrfrtgrtge3ertter4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjtrejytrtgfdghrgeftj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjjtjugdfgdfgytgrfeerte34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhjtyrgsd54tergdjerterj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhjtyhrsd857647563jjgfds34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj34gy4657trefds234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3bvct5476rgsdf4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3cbvtyrefxv4256434hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdj656tryj3xsd42387g54hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3yrtgrcvb42376f4er4hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj356yrtyh544265w43434hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj356yryrty4ty56egr4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj34fre4tefr42y56yrty34hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj56gref3454657rtyrtytr234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj356y4rge65tyrgfg4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj35r423654h6545rertrksdjk = DADADA.da;

  void fabGookPur() {
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
                              'The purchase was successful'.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
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
                                child: BtnTex('OK'.toUpperCase(),
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
    );
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: Get.back,
                      child: Image.asset(
                        'assets/decori/back.png',
                        width: 68,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'SHOP',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 68,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            if (!_miniLo.value) {
                              _miniLo.value = true;
                              final pwlsFab = await Apphud.paywalls();
                              print(pwlsFab?.paywalls.first.products!
                                  .where((element) =>
                                      element.productId == 'pack_starter')
                                  .toList()
                                  .first);

                              final purFab = await Apphud.purchase(
                                product: pwlsFab?.paywalls.first.products!
                                    .where((fodpofdopfd) =>
                                        fodpofdopfd.productId == 'pack_starter')
                                    .toList()
                                    .first,
                              );
                              if (purFab.error == null) {
                                Veshi.setKillers(3);
                                Veshi.setStoppers(3);
                                fabGookPur();
                              }

                              _miniLo.value = false;
                            }
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/btns/shop_mini.png',
                                filterQuality: FilterQuality.high,
                              ),
                              Obx(() => _miniLo.value
                                  ? CupertinoActivityIndicator(
                                      color: Colors.white,
                                    )
                                  : SizedBox())
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (!_midLo.value) {
                              _midLo.value = true;
                              final pwlsFab = await Apphud.paywalls();
                              print(pwlsFab?.paywalls.first.products!
                                  .where((element) =>
                                      element.productId == 'pack_turbo')
                                  .toList()
                                  .first);

                              final purFab = await Apphud.purchase(
                                product: pwlsFab?.paywalls.first.products!
                                    .where((fodpofdopfd) =>
                                        fodpofdopfd.productId == 'pack_turbo')
                                    .toList()
                                    .first,
                              );
                              if (purFab.error == null) {
                                Veshi.setKillers(10);
                                Veshi.setStoppers(10);
                                fabGookPur();
                              }

                              _midLo.value = false;
                            }
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/btns/shop_mid.png',
                                filterQuality: FilterQuality.high,
                              ),
                              Obx(() => _midLo.value
                                  ? CupertinoActivityIndicator(
                                      color: Colors.white,
                                    )
                                  : SizedBox())
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (!_megaLo.value) {
                              _megaLo.value = true;
                              final pwlsFab = await Apphud.paywalls();
                              print(pwlsFab?.paywalls.first.products!
                                  .where((element) =>
                                      element.productId == 'pack_power_up')
                                  .toList()
                                  .first);

                              final purFab = await Apphud.purchase(
                                product: pwlsFab?.paywalls.first.products!
                                    .where((fodpofdopfd) =>
                                        fodpofdopfd.productId ==
                                        'pack_power_up')
                                    .toList()
                                    .first,
                              );
                              if (purFab.error == null) {
                                Veshi.setKillers(20);
                                Veshi.setStoppers(20);
                                fabGookPur();
                              }

                              _megaLo.value = false;
                            }
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/btns/shop_mega.png',
                                filterQuality: FilterQuality.high,
                              ),
                              Obx(() => _megaLo.value
                                  ? CupertinoActivityIndicator(
                                      color: Colors.white,
                                    )
                                  : SizedBox())
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
