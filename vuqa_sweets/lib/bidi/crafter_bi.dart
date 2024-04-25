import 'package:get/get.dart';

import '../ctct/crafter_ct.dart';

class CrafterBi extends Bindings {
  @override
  void dependencies() {
    Get.put(CrafterCt());
  }
}
