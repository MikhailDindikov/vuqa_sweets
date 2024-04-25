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
  ////////
  //await Hran.hran!.clear();
  //await Apphud.start(apiKey: 'app_6dzszMmN8EVXnCLNkRMMuATqGMijFc');
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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