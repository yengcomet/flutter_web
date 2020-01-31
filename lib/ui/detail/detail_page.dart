
import 'package:flutter/material.dart';
import 'package:flutter_web/service/api.dart';
import 'package:flutter_web/ui/ui_contractor.dart';
import 'package:flutter_web/widget/error_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  DetailsPage({this.description, this.title, this.imagePath});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  MovieAPI api = MovieAPI();
  YoutubePlayerController _controllerY;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // );
    // _initializeVideoPlayerFuture = _controller.initialize();

    // _controller.setLooping(true);

     _controllerY = YoutubePlayerController(
        initialVideoId: 'LFfcUIFkbLg',
        flags: YoutubePlayerFlags(
            mute: false,
            autoPlay: true,
            forceHideAnnotation: true,
        ),
    );    
  }

  @override
  void dispose() {
    super.dispose();
    _controllerY.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
        backgroundColor: appBarColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: api.getMovies(),
          builder: (context, snapshot){
            Map data = snapshot.data;
            if(snapshot.hasError){
              return ErrorWidgetPage();
            }else if(snapshot.hasData){
              return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                              child: Image.network('${widget.imagePath}'),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              widget.description,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              YoutubePlayer(
                controller: _controllerY,
                showVideoProgressIndicator: true,
                // videoProgressIndicatorColor: Colors.amber,
                // progressColors: ProgressColors(
                //     playedColor: Colors.amber,
                //     handleColor: Colors.amberAccent,
                // ),
                onReady: () {
                    print('Player is ready.');
                },
              ),
              // FutureBuilder(
              //   future: _initializeVideoPlayerFuture,
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.done) {
              //       return AspectRatio(
              //         aspectRatio: _controller.value.aspectRatio,
              //         child: VideoPlayer(_controller),
              //       );
              //     } else {
              //       return Center(child: CircularProgressIndicator(backgroundColor: appBarColor,));
              //     }
              //   },
              // ),
            ],
          );
            }
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: appBarColor,
      //   onPressed: () {
      //     setState(() {
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         _controller.play();
      //       }
      //     });
      //   },
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ), 
    );
  }
}
