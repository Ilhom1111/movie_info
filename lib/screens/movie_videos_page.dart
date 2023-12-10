import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:movie_info/models/movie_videos/movie_videos.dart';
import 'package:movie_info/services/constants/colors.dart';

import '../blocs/detail_bloc/detail_bloc.dart';
import '../services/constants/fonts.dart';
import '../views/loading.dart';

class VideosPage extends StatefulWidget {
  final int id;
  const VideosPage({super.key, required this.id});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  MovieVideos? _videos;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    context.read<DetailBloc>().add(VideosParsEvent(widget.id));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<DetailBloc, DetailState>(
              listener: (context, state) async {
                if (state is DetailFailure) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.message)));
                }

                if (state is CreateVideosSuccess) {
                  _videos = state.videos;
                }
              },
            ),
          ],
          child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              if (state is DetailLoading) {
                return const Loading();
              } else {
                if (_videos != null) {
                  return ListView.builder(
                    itemCount: _videos!.results.length,
                    itemBuilder: (context, index) {
                      final video = _videos!.results[index];
                      final videoId = YoutubePlayer.convertUrlToId(
                          'https://www.youtube.com/watch?v=${video.key}');
                      _controller = YoutubePlayerController(
                        initialVideoId: videoId!,
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                        ),
                      );
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height / 2.9,
                          color: AppColors.xFF252836,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: YoutubePlayer(
                                  controller: _controller,
                                  showVideoProgressIndicator: true,
                                  aspectRatio: 16 / 9,
                                  bottomActions: [
                                    CurrentPosition(controller: _controller),
                                    ProgressBar(
                                      isExpanded: true,
                                      colors: const ProgressBarColors(
                                        playedColor: AppColors.xFF12CDD9,
                                        handleColor: AppColors.xFF12CDD9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Text(
                                      video.name,
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Fonts.montserrat,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
