import 'package:json_annotation/json_annotation.dart'; 
  
part 'product_cate_list.g.dart';


@JsonSerializable()
  class ProductCateList extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'message')
  String message;

  ProductCateList(this.code,this.data,this.message,);

  factory ProductCateList.fromJson(Map<String, dynamic> srcJson) => _$ProductCateListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProductCateListToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'keywords')
  String keywords;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'navStatus')
  int navStatus;

  @JsonKey(name: 'parentId')
  int parentId;

  @JsonKey(name: 'productCount')
  int productCount;

  @JsonKey(name: 'productUnit')
  String productUnit;

  @JsonKey(name: 'showStatus')
  int showStatus;

  @JsonKey(name: 'sort')
  int sort;

  Data(this.description,this.icon,this.id,this.keywords,this.level,this.name,this.navStatus,this.parentId,this.productCount,this.productUnit,this.showStatus,this.sort,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}