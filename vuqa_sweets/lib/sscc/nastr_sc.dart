import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/main.dart';
import 'package:vuqa_sweets/shtuki/btn_tex.dart';
import 'package:vuqa_sweets/uti/mumu.dart';

import '../uti/hran.dart';

class NastrSc extends StatefulWidget {
  final DADADA hdjskhsdhsdjj34234hksdjk;
  final DADADA hdjskhsddfsh4234234sdjjhksdjk;
  final DADADA hdjskhfsds234234dhsdjjhksdjk;
  final DADADA hdjskhsfsd324234dhsdjjhksdjk;
  final int fsfds7373737;
  const NastrSc(
      {super.key,
      this.hdjskhsdhsdjj34234hksdjk = DADADA.d,
      this.hdjskhsddfsh4234234sdjjhksdjk = DADADA.d,
      this.hdjskhfsds234234dhsdjjhksdjk = DADADA.d,
      this.hdjskhsfsd324234dhsdjjhksdjk = DADADA.d,
      this.fsfds7373737 = 1289812});

  @override
  State<NastrSc> createState() => _NastrScState();
}

class _NastrScState extends State<NastrSc> {
  final RxBool mumu = (Hran.hran!.getBool('musi') ?? true).obs;
  
  final DADADA hdjskhsdhsdjj3rte4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3ter4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjjter3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjtertgdj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjgdbdfj3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjbdfj3ert4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3erte4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3ertter4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjtretj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjjterte34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjerterj34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjjgfds34234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj34gfds234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3bvcsdf4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3cbvxv4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3xsd4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3cvb4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3h544234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj354ty4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj34fre4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3454tr234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj365t4234hksdjk = DADADA.da;
  final DADADA hdjskhsdhsdjj3423654hksdjk = DADADA.da;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg/set_bg.png'),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
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
                    Text(
                      'OPTIONS',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
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
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btns/gl_btn.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill),
                          ),
                          padding: EdgeInsets.only(top: 18, bottom: 22),
                          alignment: Alignment.center,
                          child: BtnTex('Privacy Policy'.toUpperCase(),
                              coco: Colors.white,
                              zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btns/gl_btn.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill),
                          ),
                          padding: EdgeInsets.only(top: 18, bottom: 22),
                          alignment: Alignment.center,
                          child: BtnTex('Terms of Use'.toUpperCase(),
                              coco: Colors.white,
                              zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/btns/gl_btn.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill),
                          ),
                          padding: EdgeInsets.only(top: 18, bottom: 22),
                          alignment: Alignment.center,
                          child: BtnTex('Support'.toUpperCase(),
                              coco: Colors.white,
                              zaCo: Color.fromRGBO(0, 0, 0, 0.15)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
