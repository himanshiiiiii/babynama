import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video3 extends StatefulWidget {
  String id;
  Video3({Key? key,required this.id}) : super(key: key);

  @override
  State<Video3> createState() => _Video3State();
}

class _Video3State extends State<Video3> {

  YoutubePlayerController? _controller;

  void initState() {
    super.initState();

    _controller = YoutubePlayerController(initialVideoId:"kDVYQocDXlY",
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          isLive: false,
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
        boxShadow:[ BoxShadow(blurRadius: 5.0,spreadRadius:5,color: Colors.black),]
      ),
      child: YoutubePlayer(
        controller: _controller!,
        liveUIColor: Colors.blue,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.black26,
        progressColors: ProgressBarColors(
          playedColor: Colors.blue,
          handleColor: Colors.lightBlue,
        ),
      ),
    );
  }
}
