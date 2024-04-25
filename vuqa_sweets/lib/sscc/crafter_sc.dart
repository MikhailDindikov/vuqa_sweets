import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/uti/Veshi.dart';

import '../ctct/crafter_ct.dart';
import '../modelevi/candy_model.dart';

class CrafterSc extends StatefulWidget {
  const CrafterSc({super.key});

  @override
  State<CrafterSc> createState() => _CrafterScState();
}

class _CrafterScState extends State<CrafterSc> {
  final candyCt = Get.put(CrafterCt());

  @override
  void initState() {
    candyCt.getNachaltiData();
    super.initState();
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
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
                      'Candy\ningredients'.toUpperCase(),
                      textAlign: TextAlign.center,
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
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: GetBuilder<CrafterCt>(builder: (_) {
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: candyCt.confeti.length,
                      itemBuilder: (context, idd) => CandyCardd(
                        candy: candyCt.confeti[idd],
                        onBakeCandy: () {
                          candyCt.craftCandy(idd);
                        },
                        hiddenCandy: idd == 0
                            ? false
                            : !candyCt.confeti[idd - 1].wasBought,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CandyCardd extends StatelessWidget {
  final CandyModel candy;
  final bool hiddenCandy;
  final void Function() onBakeCandy;
  const CandyCardd(
      {required this.candy,
      required this.hiddenCandy,
      required this.onBakeCandy,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      foregroundDecoration: hiddenCandy
          ? BoxDecoration(
              color: Color.fromRGBO(94, 6, 135, 0.5),
              borderRadius: BorderRadius.circular(24))
          : null,
      decoration: BoxDecoration(
        color: Color.fromRGBO(119, 83, 170, 1),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(45, 17, 78, 1), offset: Offset(0, 4)),
        ],
      ),
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              candy.fotka,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            candy.nazv,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              shadows: [
                Shadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25), offset: Offset(0, 2))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/decori/blue.png',
                    width: 41,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                  Obx(
                    () => Text(
                      '${Veshi.fabBlue.value}/${candy.tsennik[0]}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Veshi.fabBlue.value < candy.tsennik[0]
                            ? Color.fromRGBO(83, 53, 125, 1)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/decori/green.png',
                    width: 41,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                  Obx(
                    () => Text(
                      '${Veshi.fabGreen.value}/${candy.tsennik[1]}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Veshi.fabGreen.value < candy.tsennik[1]
                            ? Color.fromRGBO(83, 53, 125, 1)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/decori/orange.png',
                    width: 41,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                  Obx(
                    () => Text(
                      '${Veshi.fabOrange.value}/${candy.tsennik[2]}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Veshi.fabOrange.value < candy.tsennik[2]
                            ? Color.fromRGBO(83, 53, 125, 1)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/decori/red.png',
                    width: 41,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                  Obx(
                    () => Text(
                      '${Veshi.fabRed.value}/${candy.tsennik[3]}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Veshi.fabRed.value < candy.tsennik[3]
                            ? Color.fromRGBO(83, 53, 125, 1)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              if (!candy.wasBought) {
                onBakeCandy();
              }
            },
            child: Container(
              padding: EdgeInsets.only(top: 18, bottom: 22),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(candy.wasBought
                        ? 'assets/btns/btn.png'
                        : 'assets/btns/gl_btn.png'),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill),
              ),
              alignment: Alignment.center,
              child: Text(
                candy.wasBought
                    ? 'Baked'.toUpperCase()
                    : 'Bake candy'.toUpperCase(),
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
