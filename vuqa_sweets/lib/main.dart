import 'package:apphud/apphud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/uti/Veshi.dart';
import 'package:vuqa_sweets/uti/fabrik.dart';
import 'package:vuqa_sweets/uti/hran.dart';

import 'sscc/nach_sc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hran.GoLooo();
  await Fabrik.getFabriki();
  await Apphud.start(apiKey: 'app_Nw4WCuDeTSmDiuZETrtFo9mciUFu4d');
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // await Hran.hran!.setInt('fabRed', 20);
  // await Hran.hran!.setInt('fabGreen', 10);
  // await Hran.hran!.setInt('fabOrange', 10);
  // await Hran.hran!.setInt('fabBlue', 10);

  if (Hran.hran!.getInt('killers') == null) {
    await Hran.hran!.setInt('killers', 2);
    await Hran.hran!.setInt('stoppers', 5);
  }
  Veshi.moemRuki();

  runApp(const MyApp());
}

enum DADADA { da, d }

class MyApp extends StatelessWidget {
  final DADADA hdjskhsdhsdjjhksdjk;
  final DADADA hdjskhsddfshsdjjhksdjk;
  final DADADA hdjskhfsdsdhsdjjhksdjk;
  final DADADA hdjskhsfsddhsdjjhksdjk;
  const MyApp(
      {super.key,
      this.hdjskhsdhsdjjhksdjk = DADADA.da,
      this.hdjskhsddfshsdjjhksdjk = DADADA.da,
      this.hdjskhfsdsdhsdjjhksdjk = DADADA.da,
      this.hdjskhsfsddhsdjjhksdjk = DADADA.da});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Monte',
        useMaterial3: true,
      ),
      home: NachSc(),
    );
  }
}
