import 'package:freezed_annotation/freezed_annotation.dart';
part 'production_comp.freezed.dart';
part 'production_comp.g.dart';

@freezed
class ProductionComp with _$ProductionComp {
  const factory ProductionComp({
    required int id,
    required String? logo_path,
    required String name,
    required String origin_country,
  }) = _ProductionComp;

  factory ProductionComp.fromJson(Map<String, Object?> json) =>
      _$ProductionCompFromJson(json);
}
