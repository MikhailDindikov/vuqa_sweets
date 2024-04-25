import 'package:get/get.dart';
import 'package:vuqa_sweets/uti/hran.dart';
import '../uti/mumu.dart';

class GloCt extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onDetached() {}

  @override
  void onInactive() {
    if (Mumu.musPl) {
      Mumu.stoMu();
    }
  }

  @override
  void onPaused() {}

  @override
  void onResumed() {
    if ((Hran.hran!.getBool('musi') ?? true)) {
      Mumu.goMu('bg_mus.mp3');
    }
  }
  
  @override
  void onHidden() {
  }
}
