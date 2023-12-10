import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_info/models/now_playing_model/now_playing.dart';
import 'package:movie_info/screens/popular_all_page.dart';
import 'package:movie_info/screens/search_page.dart';
import 'package:movie_info/screens/top_rated_page.dart';
import 'package:movie_info/screens/upcoming_page.dart';
import 'package:movie_info/services/constants/colors.dart';

import '../blocs/home_bloc/home_bloc.dart';
import '../models/hive_model/hive_favorite_model.dart';
import '../models/popular/popular.dart';
import '../services/constants/fonts.dart';
import '../services/constants/strings.dart';
import '../services/hive.dart';
import '../views/home_view/department.dart';
import '../views/home_view/section_name.dart';
import '../views/loading.dart';
import 'detail_page.dart';
import 'favorite_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NowPlaying? _nowPlaying;
  NowPlaying? _upComing;
  PopularModel? _popular;
  PopularModel? _toprated;
  String count = "0";

  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeParsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showAdaptiveDialog(
          barrierColor: AppColors.backgroundColor.withOpacity(.5),
          context: context,
          builder: (context) {
            return AlertDialog.adaptive(
              backgroundColor: AppColors.xFF252836,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                StringCustom.exit,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontFamily: Fonts.montserrat,
                ),
                textAlign: TextAlign.center,
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: .0,
                          backgroundColor: AppColors.xFF252836,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: AppColors.xFF12CDD9),
                            borderRadius: BorderRadius.circular(16),
                          )),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text(
                        'No',
                        style: TextStyle(
                          color: AppColors.xFF12CDD9,
                          fontSize: 14.sp,
                          fontFamily: Fonts.montserrat,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff70b9be),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: Fonts.montserrat,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
            elevation: .0,
            backgroundColor: Colors.transparent,
            title: ShaderMask(
              child: Text(
                StringCustom.movieInfo,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: Fonts.montserrat,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    AppColors.xFF12CDD9,
                    Color.fromARGB(255, 123, 237, 245)
                  ],
                ).createShader(rect);
              },
            ),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                List<HiveFavoriteModel> favorite =
                    HiveCustom.myFavorite.values.toList().cast();

                if (favorite.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavoritePage(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(StringCustom.snacNoFavorites)));
                }
              },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: Icon(
                      Icons.favorite_border,
                      color: AppColors.xFF12CDD9,
                      size: 28.sp,
                    ),
                  ),
                  Container(
                    width: 22.w,
                    height: 22.w,
                    decoration: BoxDecoration(
                      color: AppColors.xFF252836,
                      borderRadius: BorderRadius.circular(11.w),
                      border: Border.all(color: AppColors.xFF12CDD9),
                    ),
                    child: Center(
                      child: BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                        if (state is FavoriteCountSuccess) {
                          return Text(
                            state.count,
                            style: TextStyle(
                                fontSize: 11.sp, color: AppColors.xFF12CDD9),
                          );
                        } else {
                          return Text(
                            count,
                            style: TextStyle(
                                fontSize: 11.sp, color: AppColors.xFF12CDD9),
                          );
                        }
                      }),
                    ),
                  ),
                ],
              ),
            )),
        body: MultiBlocListener(
          listeners: [
            BlocListener<HomeBloc, HomeState>(
              listener: (context, state) async {
                if (state is HomeFailure) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.message)));
                }

                if (state is CreateHomeSuccess) {
                  _nowPlaying = state.newPlaying;
                  _popular = state.popular;
                  _toprated = state.toprated;
                  _upComing = state.upComing;
                }

                if (state is FavoriteCountSuccess) {
                  count = state.count;
                }
              },
            ),
          ],
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoading) {
                return const Loading();
              } else {
                if (_nowPlaying != null ||
                    _popular != null ||
                    _toprated != null ||
                    _upComing != null) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            height: 45.h,
                            child: TextField(
                              onSubmitted: (value) {
                                if (value != "") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SearchPage(text: value.trim()),
                                    ),
                                  );
                                }
                              },
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: Fonts.montserrat,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.w),
                                filled: true,
                                fillColor: AppColors.xFF252836,
                                hintText: StringCustom.search,
                                hintStyle: TextStyle(
                                  color: const Color(0xFF92929D),
                                  fontFamily: Fonts.montserrat,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.sp),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.sp),
                                  borderSide: const BorderSide(
                                      color: AppColors.xFF12CDD9),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Color(0xFF92929D),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 15.h),
                        CarouselSlider.builder(
                          itemCount: _nowPlaying!.results.length,
                          itemBuilder: (context, index, n) {
                            final nowPlg = _nowPlaying!.results[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(id: nowPlg.id),
                                  ),
                                );
                              },
                              child: Card(
                                elevation: 5,
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.xFF252836,
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    child: Stack(
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl:
                                              'https://image.tmdb.org/t/p/w500${nowPlg.backdrop_path}',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.fill,
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [
                                                Colors.black.withOpacity(.5),
                                                Colors.black.withOpacity(.0),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                nowPlg.title,
                                                maxLines: 2,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: Fonts.montserrat,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                nowPlg.release_date,
                                                maxLines: 1,
                                                overflow: TextOverflow.fade,
                                                style: TextStyle(
                                                  color: AppColors.xFFEBEBEF,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: Fonts.montserrat,
                                                ),
                                              ),
                                              SizedBox(height: 15.h),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            aspectRatio: 2.0,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 6),
                            autoPlayCurve: Curves.easeOut,
                            enlargeCenterPage: true,
                          ),
                        ),
                        //*Most popular
                        SizedBox(height: 15.h),
                        SectionNameView(
                          text: StringCustom.mostPopular,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PopularAllPage(),
                              ),
                            );
                          },
                        ),
                        DepartmentView(
                          data2: _popular,
                        ),
                        //*Upcoming
                        SizedBox(height: 15.h),
                        SectionNameView(
                          text: StringCustom.upcoming,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UpComingAllPage(),
                              ),
                            );
                          },
                        ),
                        DepartmentView(
                          data1: _upComing,
                        ),
                        //*Top Rated
                        SizedBox(height: 15.h),
                        SectionNameView(
                          text: StringCustom.topRated,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TopRatedAllPage(),
                              ),
                            );
                          },
                        ),
                        DepartmentView(
                          data2: _toprated,
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
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
