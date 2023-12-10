import 'package:hive/hive.dart';

sealed class HiveCustom {
  static var myFavorite = Hive.box('myFavorite');
}
