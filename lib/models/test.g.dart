// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterDataResponse _$MasterDataResponseFromJson(Map<String, dynamic> json) =>
    MasterDataResponse(
      beautyAndPersonalCare: json['b_n_p_c'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['b_n_p_c'] as Map<String, dynamic>),
      dealsOfTheDay: json['deals_of_the_day'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['deals_of_the_day'] as Map<String, dynamic>),
      groceryAndKitchen: json['g_n_k'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['g_n_k'] as Map<String, dynamic>),
      householdEssentials: json['h_e'] == null
          ? null
          : CatalogItemsResponse.fromJson(json['h_e'] as Map<String, dynamic>),
      lowestPriceModel: json['lowest_price'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['lowest_price'] as Map<String, dynamic>),
      moreToExplore: json['more_to_explore'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['more_to_explore'] as Map<String, dynamic>),
      recommended: json['recommended'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['recommended'] as Map<String, dynamic>),
      shopByStore: json['s_b_'] == null
          ? null
          : CatalogItemsResponse.fromJson(json['s_b_'] as Map<String, dynamic>),
      snacksAndNamkeen: json['s_n_d'] == null
          ? null
          : CatalogItemsResponse.fromJson(
              json['s_n_d'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MasterDataResponseToJson(MasterDataResponse instance) =>
    <String, dynamic>{
      'lowest_price': instance.lowestPriceModel,
      'recommended': instance.recommended,
      'more_to_explore': instance.moreToExplore,
      'deals_of_the_day': instance.dealsOfTheDay,
      'g_n_k': instance.groceryAndKitchen,
      's_n_d': instance.snacksAndNamkeen,
      'b_n_p_c': instance.beautyAndPersonalCare,
      'h_e': instance.householdEssentials,
      's_b_': instance.shopByStore,
    };

CatalogItemsResponse _$CatalogItemsResponseFromJson(
        Map<String, dynamic> json) =>
    CatalogItemsResponse(
      title: json['title'] as String?,
      itemsData: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemsDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogItemsResponseToJson(
        CatalogItemsResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.itemsData,
    };

CatalogItemsDetailsResponse _$CatalogItemsDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    CatalogItemsDetailsResponse(
      quantity: json['qty'] as String?,
      price: (json['price'] as num?)?.toInt(),
      discount: (json['dis'] as num?)?.toInt(),
      imgUrl: json['img'] as String?,
      itemTitle: json['ti'] as String?,
      originalPrice: (json['og_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CatalogItemsDetailsResponseToJson(
        CatalogItemsDetailsResponse instance) =>
    <String, dynamic>{
      'dis': instance.discount,
      'ti': instance.itemTitle,
      'img': instance.imgUrl,
      'qty': instance.quantity,
      'price': instance.price,
      'og_price': instance.originalPrice,
    };
