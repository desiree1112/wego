import 'package:json_annotation/json_annotation.dart'; 
  
part 'common_class.g.dart';


@JsonSerializable()
  class CommonClass extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'data')
  Data data;

  @JsonKey(name: 'message')
  String message;

  CommonClass(this.code,this.data,this.message,);

  factory CommonClass.fromJson(Map<String, dynamic> srcJson) => _$CommonClassFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CommonClassToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  Data();

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
