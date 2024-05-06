// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) => AddressResponse(
      addressDataList: (json['add'] as List<dynamic>?)
          ?.map((e) => AddressDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) => <String, dynamic>{
      'add': instance.addressDataList,
    };

AddressDetailsResponse _$AddressDetailsResponseFromJson(Map<String, dynamic> json) => AddressDetailsResponse(
    name: json['name'] as String?,
    address: json['address'] as String?,
    distanceFromCenter: (json['dist'] as num?)?.toDouble(),
    time: json['time'] as int?);

Map<String, dynamic> _$AddressDetailsResponseToJson(AddressDetailsResponse instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'dist': instance.distanceFromCenter,
      'time': instance.time,
    };
