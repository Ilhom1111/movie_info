import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:movie_info/services/constants/colors.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'models/hive_model/hive_favorite_adapter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundColor,
        systemNavigationBarColor: AppColors.backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final appDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDirectory.path);
  Hive.registerAdapter(HiveFavoriteAdapter());
  await Hive.openBox('myFavorite');
  runApp(const MyApp());
}
