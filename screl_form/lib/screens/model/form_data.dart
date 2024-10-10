import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/foundation.dart/';


part 'form_data.freezed.dart';
part 'form_data.g.dart';


@freezed
class FormsData with _$FormsData {
   factory FormsData({
    required String email,
    required String name,
    required String preview,
    required String subject,
  }) = _FormsData;

  factory FormsData.fromJson(Map<String, dynamic> json) => _$FormsDataFromJson(json);
}