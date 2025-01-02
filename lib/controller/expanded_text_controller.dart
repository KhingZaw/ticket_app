import 'package:get/get.dart';

class ExpandedTextController extends GetxController {
  var isExpanded = false.obs;
  void toggleExpansion(int index) {
    isExpanded.value = !isExpanded.value;
  }
}
