import 'package:freezed_annotation/freezed_annotation.dart';
part 'dates.freezed.dart';
part 'dates.g.dart';

@freezed
class Dates with _$Dates {
  const factory Dates({
    required String maximum,
    required String minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}
