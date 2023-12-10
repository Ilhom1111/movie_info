import 'package:hive/hive.dart';

class HiveFavoriteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(0)
  String imageUrl;
  @HiveField(0)
  String reting;
  @HiveField(0)
  String id;

  HiveFavoriteModel({
    required this.title,
    required this.imageUrl,
    required this.reting,
    required this.id,
  });
}
