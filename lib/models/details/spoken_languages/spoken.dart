import 'package:freezed_annotation/freezed_annotation.dart';
part 'spoken.freezed.dart';
part 'spoken.g.dart';

@freezed
class Spoken with _$Spoken {
  const factory Spoken({
    required String english_name,
    required String iso_639_1,
    required String name,
  }) = _Spoken;

  factory Spoken.fromJson(Map<String, Object?> json) => _$SpokenFromJson(json);
}
