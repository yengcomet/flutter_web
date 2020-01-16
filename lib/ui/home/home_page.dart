import 'package:flutter/material.dart';
import 'package:flutter_web/bloc/home_bloc.dart';
import 'package:flutter_web/model/branch.dart';
import 'package:flutter_web/model/video.dart';
import 'package:flutter_web/ui/widget/movies_widget.dart';
import 'package:flutter_web/ui/widget/ui_constractor.dart';

class HomePage extends StatefulWidget {
  final Branch video;
  HomePage({this.video});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc homeBloc = HomeBloc();

   Branch movieShow = Branch();

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  Future<Null> refreshList() async {
    // homeBloc.fetchMovies();
    homeBloc.fetchMovies();
    return null;
  }

  Widget _moviesGridViewBuild() {
    return StreamBuilder(
      stream: homeBloc.moviesDispley,
      initialData: null,
      builder: (context, snapshot) {
        if (snapshot.data == false) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(appBarColor),
            ),
          );
        }
        List<Branch> moviesList = snapshot.data ?? [];

        // if (moviesList.length == 0) {
        //   return MoviesWidget(
        //     imagePath: "",
        //     textTitle: "Ip man",
        //   );
        // }
        return GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: moviesList.length,
          itemBuilder: (context, index) {
            Branch movieShow = moviesList[index];
            List<String> images = movieShow.cover ?? [];
            String imageURL;
            if (images.length > 0) {
              imageURL = images.first;
            }
            return InkWell(
              onTap: () {},
              child: MoviesWidget(
                imagePath: imageURL,
                textTitle: movieShow.name,
                textTitleLaos: movieShow.nameLao,
                date: movieShow.detail,
              ),
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    homeBloc.fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudCorlor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Flutter Web'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        child: RefreshIndicator(
          color: appBarColor,
          key: _refreshIndicatorKey,
          onRefresh: () async {
            await refreshList();
          },
          // child: _moviesGridViewBuild(),
          child: Text(movieShow.name),
        ),
      ),
    );
  }
}
