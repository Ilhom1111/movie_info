import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_info/screens/detail_page.dart';

import '../models/hive_model/hive_favorite_model.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/hive.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void detailPage(String movieId) {
    int? id = int.tryParse(movieId);
    if (id != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailPage(id: id)),
      );
      setState(() {});
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<HiveFavoriteModel> favorite =
        HiveCustom.myFavorite.values.toList().cast();
    double gridY = MediaQuery.sizeOf(context).height / 2.9.h;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  color: AppColors.xFF12CDD9,
                  backgroundColor: AppColors.xFF252836,
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: GridView.builder(
                    itemCount: favorite.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: gridY,
                      mainAxisSpacing: 10.h,
                      crossAxisSpacing: 10.w,
                    ),
                    itemBuilder: (context, index) {
                      final data = favorite[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: GestureDetector(
                          onTap: () {
                            detailPage(data.id);
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
                                          imageUrl: data.imageUrl,
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.fill,
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 8, right: 8),
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                6,
                                        height: 25,
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
                                              Icons.star_border_purple500,
                                              color: AppColors.xFFFF8700,
                                              size: 21.sp,
                                            ),
                                            Text(
                                              data.reting,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                color: AppColors.xFFFF8700,
                                                fontFamily: Fonts.montserrat,
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
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: double.infinity,
                                    color: AppColors.xFF252836,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 8, right: 8),
                                      child: Text(
                                        data.title,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
