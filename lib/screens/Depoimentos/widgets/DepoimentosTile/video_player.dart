import 'package:flutter/material.dart';
import 'package:testeflutter/data/Objects/depoimentos_data.dart';
import 'package:chewie/chewie.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/DepoimentosTile/player_thumb.dart';
import 'package:testeflutter/screens/Depoimentos/widgets/player_container.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  final DepoimentosData? data;
  const CustomVideoPlayer({
    Key? key,
    @required this.data,
  }) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  VideoPlayerController? controller;
  ChewieController? chewieController;
  @override
  Widget build(BuildContext context) {
    final isPlaying = chewieController?.isPlaying ?? false;
    return GestureDetector(
        onTap: () async {
          final url = widget.data!.videoUrl;
          controller = VideoPlayerController.network(url!);
          await controller!.initialize();
          setState(() {
            chewieController = ChewieController(
              videoPlayerController: controller!,
              autoPlay: true,
              looping: true,
            );
          });
        },
        child: isPlaying
            ? PlayerContainer(child: Chewie(controller: chewieController!))
            : PlayerThumb(data: widget.data));
  }
}
