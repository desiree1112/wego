// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonClass _$CommonClassFromJson(Map<String, dynamic> json) {
  return CommonClass(
    json['code'] as int,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    json['message'] as String,
  );
}

Map<String, dynamic> _$CommonClassToJson(CommonClass instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data();
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{};
