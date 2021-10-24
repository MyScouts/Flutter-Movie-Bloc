// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../presentation.dart';
//
// class Screen extends StatefulWidget {
//   const Screen({Key key}) : super(key: key);
//
//   @override
//   _ScreenState createState() => _ScreenState();
// }
//
// class _ScreenState extends State<Screen> with ResponsiveWidget {
//   ViewModel _viewModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return BaseWidget<SplashViewModel>(
//         viewModel: ViewModel(),
//         onViewModelReady: (viewModel) {
//           _viewModel = viewModel..init();
//         },
//         // child: WidgetBackground(),
//         builder: (context, viewModel, child) {
//           return Scaffold(
//             body: buildUi(context: context),
//           );
//         });
//   }
//
//   @override
//   Widget buildMobile(BuildContext context) {
//     return SizedBox();
//   }
//
//   @override
//   Widget buildTablet(BuildContext context) {
//     return SizedBox();
//   }
//
//   @override
//   Widget buildDesktop(BuildContext context) {
//     return SizedBox();
//   }
// }
