import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

@JsonSerializable()
class MasterDataResponse {
  @JsonKey(name: "lowest_price")
  CatalogItemsResponse? lowestPriceModel;
  @JsonKey(name: "recommended")
  CatalogItemsResponse? recommended;
  @JsonKey(name: "more_to_explore")
  CatalogItemsResponse? moreToExplore;
  @JsonKey(name: "deals_of_the_day")
  CatalogItemsResponse? dealsOfTheDay;
  @JsonKey(name: "g_n_k")
  CatalogItemsResponse? groceryAndKitchen;
  @JsonKey(name: "s_n_d")
  CatalogItemsResponse? snacksAndNamkeen;
  @JsonKey(name: "b_n_p_c")
  CatalogItemsResponse? beautyAndPersonalCare;
  @JsonKey(name: "h_e")
  CatalogItemsResponse? householdEssentials;
  @JsonKey(name: "s_b_")
  CatalogItemsResponse? shopByStore;

  MasterDataResponse({
    this.beautyAndPersonalCare,
    this.dealsOfTheDay,
    this.groceryAndKitchen,
    this.householdEssentials,
    this.lowestPriceModel,
    this.moreToExplore,
    this.recommended,
    this.shopByStore,
    this.snacksAndNamkeen,
  });

  static MasterDataResponse fromJson(Map<String, dynamic> data) => _$MasterDataResponseFromJson(data);

  Map<String, dynamic> toJson() => _$MasterDataResponseToJson(this);
}

@JsonSerializable()
class CatalogItemsResponse {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "items")
  List<CatalogItemsDetailsResponse>? itemsData;

  CatalogItemsResponse({this.title, this.itemsData});

  static CatalogItemsResponse fromJson(Map<String, dynamic> data) => _$CatalogItemsResponseFromJson(data);

  Map<String, dynamic> toJson() => _$CatalogItemsResponseToJson(this);
}

@JsonSerializable()
class CatalogItemsDetailsResponse {
  @JsonKey(name: "dis")
  int? discount;
  @JsonKey(name: "ti")
  String? itemTitle;
  @JsonKey(name: "img")
  String? imgUrl;
  @JsonKey(name: "qty")
  String? quantity;
  @JsonKey(name: "price")
  int? price;
  @JsonKey(name: "og_price")
  int? originalPrice;

  CatalogItemsDetailsResponse({
    this.quantity,
    this.price,
    this.discount,
    this.imgUrl,
    this.itemTitle,
    this.originalPrice,
  });

  static CatalogItemsDetailsResponse fromJson(Map<String, dynamic> data) => _$CatalogItemsDetailsResponseFromJson(data);

  Map<String, dynamic> toJson() => _$CatalogItemsDetailsResponseToJson(this);
}
