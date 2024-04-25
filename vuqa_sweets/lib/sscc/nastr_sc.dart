import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/shtuki/btn_tex.dart';
import 'package:vuqa_sweets/uti/mumu.dart';

import '../uti/hran.dart';

class NastrSc extends StatefulWidget {
  const NastrSc({super.key});

  @override
  State<NastrSc> createState() => _NastrScState();
}

class _NastrScState extends State<NastrSc> {
  final RxBool mumu = (Hran.hran!.getBool('musi') ?? true).obs;

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
