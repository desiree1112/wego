// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_cate_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCateList _$ProductCateListFromJson(Map<String, dynamic> json) {
  return ProductCateList(
    json['code'] as int,
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['message'] as String,
  );
}

Map<String, dynamic> _$ProductCateListToJson(ProductCateList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['description'] as String,
    json['icon'] as String,
    json['id'] as int,
    json['keywords'] as String,
    json['level'] as int,
    json['name'] as String,
    json['navStatus'] as int,
    json['parentId'] as int,
    json['productCount'] as int,
    json['productUnit'] as String,
    json['showStatus'] as int,
    json['sort'] as int,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
      'id': instance.id,
      'keywords': instance.keywords,
      'level': instance.level,
      'name': instance.name,
      'navStatus': instance.navStatus,
      'parentId': instance.parentId,
      'productCount': instance.productCount,
      'productUnit': instance.productUnit,
      'showStatus': instance.showStatus,
      'sort': instance.sort,
    };
