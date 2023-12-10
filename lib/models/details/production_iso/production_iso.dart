import 'package:freezed_annotation/freezed_annotation.dart';
part 'production_iso.freezed.dart';
part 'production_iso.g.dart';

@freezed
class ProductionIso with _$ProductionIso {
  const factory ProductionIso({
    required String iso_3166_1,
    required String name,
  }) = _ProductionIso;

  factory ProductionIso.fromJson(Map<String, Object?> json) =>
      _$ProductionIsoFromJson(json);
}
