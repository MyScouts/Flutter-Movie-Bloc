import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/src/presentation/base/base.dart';
import 'package:flutter_app/src/presentation/home/home.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  late HomeViewModel _viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
        viewModel: HomeViewModel(),
        onViewModelReady: (viewModel) => _viewModel = viewModel!..initial(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: _viewModel.movies.length <= 0
                ? Center(child: Text("No data"))
                : ListView.builder(
                    itemCount: _viewModel.movies.length + 1,
                    itemBuilder: (_, index) {
                      if (index == _viewModel.movies.length)
                        _viewModel.onLoadMore();
                      return index == _viewModel.movies.length
                          ? Container(
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      child: CircularProgressIndicator(),
                                      height: 15.0,
                                      width: 15.0,
                                    )
                                  ],
                                ),
                              ),
                            )
                          : ListTile(
                              title: Text("${_viewModel.movies[index].title}"),
                            );
                    }),
          );
        });
  }
}
