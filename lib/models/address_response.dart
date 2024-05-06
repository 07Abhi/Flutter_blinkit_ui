import 'package:json_annotation/json_annotation.dart';

part 'address_response.g.dart';

@JsonSerializable()
class AddressResponse {
  @JsonKey(name: "add")
  List<AddressDetailsResponse>? addressDataList;

  AddressResponse({
    this.addressDataList,
  });

  static AddressResponse fromJson(Map<String, dynamic> data) => _$AddressResponseFromJson(data);

  Map<String, dynamic> toJson() => _$AddressResponseToJson(this);
}

@JsonSerializable()
class AddressDetailsResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "address")
  String? address;
  @JsonKey(name: "dist")
  double? distanceFromCenter;
  @JsonKey(name:"time")
  int? time;

  AddressDetailsResponse({
    this.name,
    this.address,
    this.distanceFromCenter,
    this.time,
  });

  static AddressDetailsResponse fromJson(Map<String, dynamic> data) => _$AddressDetailsResponseFromJson(data);

  Map<String, dynamic> toJson() => _$AddressDetailsResponseToJson(this);
}
