import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SplashViewModel>(
        viewModel: SplashViewModel(),
        onViewModelReady: (viewModel) {
          viewModel?.init();
        },
        child: _buildBody(context),
        childMobile: _buildBodyMobile(context),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: child,
          );
        });
  }

  Widget _buildBodyMobile(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'app_name'.tr,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text('app_name'.tr),
      ),
    );
  }
}
