import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PokupkiSc extends StatefulWidget {
  const PokupkiSc({super.key});

  @override
  State<PokupkiSc> createState() => _PokupkiScState();
}

class _PokupkiScState extends State<PokupkiSc> {
  final RxBool _miniLo = false.obs;
  final RxBool _midLo = false.obs;
  final RxBool _megaLo = false.obs;

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
