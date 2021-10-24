import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../presentation.dart';

class SplashViewModel extends BaseViewModel {
  init() async {
    EasyLoading.show(status: 'loading...');
    EasyLoading.dismiss();
    Future.delayed(Duration(seconds: 1), () => Get.toNamed(Routers.home));
  }
}
