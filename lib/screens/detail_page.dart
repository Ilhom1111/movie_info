import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:movie_info/services/constants/colors.dart';
import 'package:movie_info/views/detail_view/poster_image.dart';

import '../blocs/detail_bloc/detail_bloc.dart';
import '../blocs/home_bloc/home_bloc.dart';
import '../models/details/details.dart';
import '../services/constants/fonts.dart';
import '../views/loading.dart';
import 'movie_videos_page.dart';

class DetailPage extends StatefulWidget {
  final int id;
  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Details? _details;
  bool tf = false;

  @override
  void initState() {
    context.read<DetailBloc>().add(DetailParsEvent(widget.id));
    super.initState();
  }

  _share() async {
    final uri =
        Uri.parse('https://image.tmdb.org/t/p/w500${_details!.poster_path}');
    final response = await http.get(uri);
    final imageBytes = response.bodyBytes;
    final t = await getTemporaryDirectory();
    final path = "${t.path}/movie_info.jpg";
    File(path).writeAsBytesSync(imageBytes);
    Share.shareXFiles([XFile(path)],
        text:
            "Movie Info App.\nTelegram channel: https://t.me/yusupov_ilhom_flutter_dev\n${_details?.title}\nDescription: ${_details!.overview}");
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

                if (state is CreateDetailSuccess) {
                  _details = state.data;
                }

                if (state is CreateFavoriteSuccess) {
                  tf = state.favorite;
                }
              },
            ),
          ],
          child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              if (state is DetailLoading) {
                return const Loading();
              } else {
                if (_details != null) {
                  return Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            'https://image.tmdb.org/t/p/w500${_details!.poster_path}',
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height / 1.5,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.backgroundColor.withOpacity(.78),
                              AppColors.backgroundColor.withOpacity(.88),
                              AppColors.backgroundColor,
                              AppColors.backgroundColor,
                            ],
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width,
                                height: 50.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      splashRadius: 1,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Platform.isAndroid
                                            ? Icons.arrow_back
                                            : Icons.arrow_back_ios_new,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width /
                                          1.5,
                                      child: Center(
                                        child: Text(
                                          _details!.title,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: Fonts.montserrat,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    BlocBuilder<DetailBloc, DetailState>(
                                      builder: (context, state) {
                                        if (state is CreateFavoriteSuccess) {
                                          return IconButton(
                                            splashRadius: 1,
                                            onPressed: () {
                                              context.read<DetailBloc>().add(
                                                    FavoriteParsEvent(
                                                      id: _details!.id
                                                          .toString(),
                                                      titl: _details!.title,
                                                      imageUrl:
                                                          'https://image.tmdb.org/t/p/w500${_details!.poster_path}',
                                                      reting:
                                                          "${_details!.vote_average.toString()[0]}.${_details!.vote_average.toString()[2]}",
                                                    ),
                                                  );
                                              context.read<HomeBloc>().add(
                                                  const FavoriteCountParsEvent());
                                            },
                                            icon: state.favorite != false
                                                ? const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  )
                                                : const Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.white,
                                                  ),
                                          );
                                        } else {
                                          return IconButton(
                                            splashRadius: 1,
                                            onPressed: () {
                                              context.read<DetailBloc>().add(
                                                    FavoriteParsEvent(
                                                      id: _details!.id
                                                          .toString(),
                                                      titl: _details!.title,
                                                      imageUrl:
                                                          'https://image.tmdb.org/t/p/w500${_details!.poster_path}',
                                                      reting:
                                                          "${_details!.vote_average.toString()[0]}.${_details!.vote_average.toString()[2]}",
                                                    ),
                                                  );
                                              context.read<HomeBloc>().add(
                                                  const FavoriteCountParsEvent());
                                            },
                                            icon: tf == false
                                                ? const Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  )
                                                : const Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.white,
                                                  ),
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PosterImage(
                                            image: _details!.poster_path),
                                      ),
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/w500${_details!.poster_path}',
                                      width: MediaQuery.sizeOf(context).width /
                                          1.7,
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              2.5,
                                      fit: BoxFit.fill,
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_outlined,
                                        color: AppColors.xFF92929D,
                                      ),
                                      Text(
                                        _details!.release_date,
                                        style: TextStyle(
                                          color: AppColors.xFF92929D,
                                          fontFamily: Fonts.montserrat,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 1.5,
                                    height: 28.h,
                                    color: AppColors.xFF92929D,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.access_time_filled,
                                        color: AppColors.xFF92929D,
                                      ),
                                      Text(
                                        "${_details!.runtime} Minutes",
                                        style: TextStyle(
                                          color: AppColors.xFF92929D,
                                          fontFamily: Fonts.montserrat,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 13.h),
                              Center(
                                child: Row(
                                  children: [
                                    const Spacer(flex: 3),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.xFFFF8700,
                                        minimumSize: Size(
                                            MediaQuery.sizeOf(context).width /
                                                2.6,
                                            54),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => VideosPage(
                                              id: _details!.id,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.video_collection_rounded,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            'Videos',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: Fonts.montserrat,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(flex: 1),
                                    GestureDetector(
                                      onTap: _share,
                                      child: Container(
                                        width: 54.w,
                                        height: 54.h,
                                        decoration: BoxDecoration(
                                          color: AppColors.xFF252836,
                                          borderRadius:
                                              BorderRadius.circular(28.sp),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.share_outlined,
                                            size: 27.sp,
                                            color: AppColors.xFF12CDD9,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(flex: 3),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Income: ',
                                            style: TextStyle(
                                              color: AppColors.xFF12CDD9,
                                              fontFamily: Fonts.montserrat,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\$${_details!.revenue}",
                                            style: TextStyle(
                                              color: AppColors.xFF92929D,
                                              fontFamily: Fonts.montserrat,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 72.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.xFF252836,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star_border_purple500,
                                            color: AppColors.xFFFF8700,
                                            size: 22.sp,
                                          ),
                                          Text(
                                            "${_details!.vote_average.toString()[0]}.${_details!.vote_average.toString()[2]}",
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              color: AppColors.xFFFF8700,
                                              fontFamily: Fonts.montserrat,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Genres: ',
                                        style: TextStyle(
                                          color: AppColors.xFF12CDD9,
                                          fontFamily: Fonts.montserrat,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      if (_details!.genres.isNotEmpty)
                                        for (int i = 0;
                                            i < _details!.genres.length;
                                            i++)
                                          TextSpan(
                                            text:
                                                "${_details!.genres[i].name} ",
                                            style: TextStyle(
                                              color: AppColors.xFF92929D,
                                              fontFamily: Fonts.montserrat,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                      else
                                        TextSpan(
                                          text: 'No',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 16.sp,
                                            fontFamily: Fonts.montserrat,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Producing countries: ',
                                        style: TextStyle(
                                          color: AppColors.xFF12CDD9,
                                          fontFamily: Fonts.montserrat,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      if (_details!
                                          .production_countries.isNotEmpty)
                                        for (int i = 0;
                                            i <
                                                _details!.production_countries
                                                    .length;
                                            i++)
                                          TextSpan(
                                            text:
                                                "${_details!.production_countries[i].name} ",
                                            style: TextStyle(
                                              color: AppColors.xFF92929D,
                                              fontFamily: Fonts.montserrat,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                      else
                                        TextSpan(
                                          text: 'No',
                                          style: TextStyle(
                                            color: AppColors.xFF92929D,
                                            fontFamily: Fonts.montserrat,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    color: AppColors.xFF12CDD9,
                                    fontFamily: Fonts.montserrat,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  _details!.overview,
                                  style: TextStyle(
                                    color: AppColors.xFF92929D,
                                    fontFamily: Fonts.montserrat,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  'Production companies',
                                  style: TextStyle(
                                    color: AppColors.xFF12CDD9,
                                    fontFamily: Fonts.montserrat,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Wrap(
                                children: [
                                  if (_details!.production_companies.isNotEmpty)
                                    for (int i = 0;
                                        i <
                                            _details!
                                                .production_companies.length;
                                        i++)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 15),
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                'https://image.tmdb.org/t/p/w500${_details!.production_companies[i].logo_path}',
                                            width: MediaQuery.sizeOf(context)
                                                    .width /
                                                2.5,
                                            height: MediaQuery.sizeOf(context)
                                                    .height /
                                                6,
                                            errorWidget:
                                                (context, url, error) => Center(
                                              child: Text(
                                                _details!
                                                    .production_companies[i]
                                                    .name,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: AppColors.xFFEBEBEF,
                                                  fontFamily: Fonts.montserrat,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                ],
                              ),
                              SizedBox(height: 15.h),
                            ],
                          ),
                        ),
                      ),
                    ],
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
