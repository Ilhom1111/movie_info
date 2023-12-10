import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_info/screens/detail_page.dart';

import '../blocs/home_bloc/home_bloc.dart';
import '../models/popular/popular.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../views/loading.dart';

class SearchPage extends StatefulWidget {
  final String text;
  const SearchPage({super.key, required this.text});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int page = 1;
  final _controller = ScrollController();
  PopularModel? _search;
  @override
  void initState() {
    context.read<HomeBloc>().add(SearchParsEvent(page: 1, queriy: widget.text));
    _controller.addListener(newPage);
    super.initState();
  }

  void newPage() {
    if (_controller.position.pixels == _controller.position.maxScrollExtent) {
      if (page != 500) {
        if (page != _search!.total_pages) {
          page++;
          log(page.toString());
          context
              .read<HomeBloc>()
              .add(SearchParsEvent(page: page, queriy: widget.text));
        }
      }
    } else if (_controller.position.pixels ==
        _controller.position.minScrollExtent) {
      if (page != 1) {
        page--;
        log(page.toString());
        context
            .read<HomeBloc>()
            .add(SearchParsEvent(page: page, queriy: widget.text));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double gridY = MediaQuery.sizeOf(context).height / 2.8.h;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<HomeBloc, HomeState>(
              listener: (context, state) async {
                if (state is HomeFailure) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.message)));
                }
                if (state is CreateSearchSuccess) {
                  _search = state.search;
                }
              },
            ),
          ],
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoading) {
                return const Loading();
              } else if (state is HomeFailure) {
                return Center(
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://cdn2.iconfinder.com/data/icons/visual-empty-state/32/No_Data_Found_Not_Found_Lost_Searching_Search-1024.png',
                    width: MediaQuery.sizeOf(context).width / 2,
                    height: MediaQuery.sizeOf(context).width / 2,
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                );
              } else {
                if (_search != null) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 25.h,
                          color: AppColors.backgroundColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Page: ${_search!.page}",
                                style: TextStyle(
                                  color: AppColors.xFF92929D,
                                  fontFamily: Fonts.montserrat,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (_search!.total_pages <= 500)
                                Text(
                                  "Total pages: ${_search!.total_pages}",
                                  style: TextStyle(
                                    color: AppColors.xFF92929D,
                                    fontFamily: Fonts.montserrat,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              else
                                Text(
                                  "Total pages: 500",
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
                        Expanded(
                          child: GridView.builder(
                            itemCount: _search!.results.length,
                            controller: _controller,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: gridY,
                              mainAxisSpacing: 10.h,
                              crossAxisSpacing: 10.w,
                            ),
                            itemBuilder: (context, index) {
                              final pop = _search!.results[index];
                              String reting = pop.vote_average.toString();
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: GestureDetector(
                                  onTap: () {
                                    log(pop.id.toString());
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailPage(id: pop.id)),
                                    );
                                  },
                                  child: Container(
                                    color: AppColors.xFF252836,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 7,
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Container(
                                                color: AppColors.xFF252836,
                                                child: CachedNetworkImage(
                                                  imageUrl: pop.poster_path ==
                                                          null
                                                      ? "https://i.pinimg.com/736x/ac/a6/8f/aca68f1ba4cde720e5cebc66aead1348.jpg"
                                                      : 'https://image.tmdb.org/t/p/w500${pop.poster_path}',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.fill,
                                                  errorWidget: (context, url,
                                                          error) =>
                                                      const Icon(Icons.error),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 8, right: 8),
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width /
                                                        6,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                  color: AppColors.xFF252836
                                                      .withOpacity(.8),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .star_border_purple500,
                                                      color:
                                                          AppColors.xFFFF8700,
                                                      size: 21.sp,
                                                    ),
                                                    Text(
                                                      "${reting[0]}.${reting[2]}",
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        color:
                                                            AppColors.xFFFF8700,
                                                        fontFamily:
                                                            Fonts.montserrat,
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            width: double.infinity,
                                            color: AppColors.xFF252836,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, left: 8, right: 8),
                                              child: Text(
                                                pop.title,
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
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
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
