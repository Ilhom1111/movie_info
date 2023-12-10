import 'package:hive/hive.dart';

import 'hive_favorite_model.dart';

class HiveFavoriteAdapter extends TypeAdapter<HiveFavoriteModel> {
  @override
  HiveFavoriteModel read(BinaryReader reader) {
    final title = reader.read() as String;
    final imageUrl = reader.read() as String;
    final reting = reader.read() as String;
    final id = reader.read() as String;

    return HiveFavoriteModel(
        title: title, imageUrl: imageUrl, reting: reting, id: id);
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, HiveFavoriteModel obj) {
    writer.write(obj.title);
    writer.write(obj.imageUrl);
    writer.write(obj.reting);
    writer.write(obj.id);
  }
}
