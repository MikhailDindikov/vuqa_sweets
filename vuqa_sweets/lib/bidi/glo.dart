import 'package:get/get.dart';

import '../ctct/glo_ct.dart';

class Glo extends Bindings {
  @override
  void dependencies() {
    Get.put(GloCt());
  }

}
