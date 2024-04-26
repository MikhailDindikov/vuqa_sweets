import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/main.dart';

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
                              // final wwwwww = await Apphud.paywalls();
                              // print(wwwwww?.paywalls.first.products!
                              //     .where((element) =>
                              //         element.productId == 'starter_pack')
                              //     .toList()
                              //     .first);

                              // final ananan = await Apphud.purchase(
                              //   product: wwwwww?.paywalls.first.products!
                              //       .where((fodpofdopfd) =>
                              //           fodpofdopfd.productId == 'starter_pack')
                              //       .toList()
                              //       .first,
                              // );
                              // if (ananan.error == null) {
                              //   Moneti.setBs(10);
                              //   bbbDlg('YOU GOT 10 step back coins + No ADs');
                              // }

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
                                      color: Colors.black,
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
                              // final wwwwww = await Apphud.paywalls();
                              // print(wwwwww?.paywalls.first.products!
                              //     .where((element) =>
                              //         element.productId == 'starter_pack')
                              //     .toList()
                              //     .first);

                              // final ananan = await Apphud.purchase(
                              //   product: wwwwww?.paywalls.first.products!
                              //       .where((fodpofdopfd) =>
                              //           fodpofdopfd.productId == 'starter_pack')
                              //       .toList()
                              //       .first,
                              // );
                              // if (ananan.error == null) {
                              //   Moneti.setBs(10);
                              //   bbbDlg('YOU GOT 10 step back coins + No ADs');
                              // }

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
                                      color: Colors.black,
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
                              // final wwwwww = await Apphud.paywalls();
                              // print(wwwwww?.paywalls.first.products!
                              //     .where((element) =>
                              //         element.productId == 'mega_pack')
                              //     .toList()
                              //     .first);

                              // final ananan = await Apphud.purchase(
                              //   product: wwwwww?.paywalls.first.products!
                              //       .where((fodpofdopfd) =>
                              //           fodpofdopfd.productId == 'mega_pack')
                              //       .toList()
                              //       .first,
                              // );
                              // if (ananan.error == null) {
                              //   Moneti.setBs(100);
                              //   Hranilishe.hranilishe!.setBool('blue', true);
                              //   bbbDlg(
                              //       'YOU GOT 100 step back coins + Galactarius planet + No ADs');
                              // }

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
                                      color: Colors.black,
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
