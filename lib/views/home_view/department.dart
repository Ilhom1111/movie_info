import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_info/screens/detail_page.dart';

import '../../models/now_playing_model/now_playing.dart';
import '../../models/popular/popular.dart';
import '../../services/constants/colors.dart';

// ignore: must_be_immutable
class DepartmentView extends StatelessWidget {
  NowPlaying? data1;
  PopularModel? data2;
  DepartmentView({super.key, this.data1, this.data2});

  @override
  Widget build(BuildContext context) {
    if (data1 != null) {
      return Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data1!.results.length,
              itemBuilder: (context, index) {
                final results = data1!.results[index];
                String reting = results.vote_average.toString();
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(id: results.id),
                      ),
                    );
                    log(results.id.toString());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: MediaQuery.sizeOf(context).width / 2.5,
                    decoration: BoxDecoration(
                      color: AppColors.xFF252836,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://image.tmdb.org/t/p/w500${results.poster_path}',
                                width: MediaQuery.sizeOf(context).width / 2.5,
                                height: MediaQuery.sizeOf(context).height / 4,
                                fit: BoxFit.fill,
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8, right: 8),
                                width: MediaQuery.sizeOf(context).width / 6,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.xFF252836.withOpacity(.8),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_border_purple500,
                                      color: AppColors.xFFFF8700,
                                      size: 21.sp,
                                    ),
                                    Text(
                                      "${reting[0]}.${reting[2]}",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: AppColors.xFFFF8700,
                                        fontFamily: "Montserrat",
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            results.title,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data2!.results.length,
              itemBuilder: (context, index) {
                final results = data2!.results[index];
                String reting = results.vote_average.toString();
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(id: results.id),
                      ),
                    );
                    log(results.id.toString());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: MediaQuery.sizeOf(context).width / 2.5,
                    decoration: BoxDecoration(
                      color: AppColors.xFF252836,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CachedNetworkImage(
                                imageUrl:
                                    'https://image.tmdb.org/t/p/w500${results.poster_path}',
                                width: MediaQuery.sizeOf(context).width / 2.5,
                                height: MediaQuery.sizeOf(context).height / 4,
                                fit: BoxFit.fill,
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8, right: 8),
                                width: MediaQuery.sizeOf(context).width / 6,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.xFF252836.withOpacity(.8),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_border_purple500,
                                      color: AppColors.xFFFF8700,
                                      size: 21.sp,
                                    ),
                                    Text(
                                      "${reting[0]}.${reting[2]}",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: AppColors.xFFFF8700,
                                        fontFamily: "Montserrat",
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            results.title,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    }
  }
}
