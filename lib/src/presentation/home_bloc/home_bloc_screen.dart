import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/src/resource/bloc/movies/movies_bloc.dart';
import 'package:flutter_app/src/resource/bloc/movies/movies_evnents.dart';
import 'package:flutter_app/src/resource/bloc/movies/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class HomeScreenBloc extends StatelessWidget {
  late MoviesBloc _bloc = new MoviesBloc()..add(MovieFetchData());
  final ScrollController controller = ScrollController();

  void onScroll() {
    double maxScroll = controller.position.maxScrollExtent;
    double currentScroll = controller.position.pixels;

    // if (currentScroll == maxScroll) _bloc..add(MovieFetchData());
  }

  @override
  Widget build(BuildContext context) {
    controller.addListener(onScroll);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => MoviesBloc()..add(MovieFetchData()))
          ],
          child: Container(
            child: Column(
              children: [
                _buildListPopular(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildListPopular() {
    return BlocBuilder<MoviesBloc, MoviesState>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is MovieLoadInprogress) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is MoviesLoadSuccess) {
          return Expanded(
            child: ListView.builder(
              controller: controller,
              shrinkWrap: true,
              itemCount: !state.hasReachedMax
                  ? state.movies.length
                  : state.movies.length + 1,
              itemBuilder: (lvContext, index) {
                log("_buildListPopular movies: ${state.movies.length}");
                return index < state.movies.length
                    ? Card(
                        elevation: 0,
                        child: Container(
                          child: Column(
                            children: [
                              Text("${state.movies[index].title}"),
                              Text("${state.movies[index].id}"),
                            ],
                          ),
                        ),
                      )
                    : Center(
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(),
                        ),
                      );
              },
            ),
          );
        } else if (state is MoviePageLoadField) {
          return Center(
            child: Text("ERROR:" + state.error.toString()),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
