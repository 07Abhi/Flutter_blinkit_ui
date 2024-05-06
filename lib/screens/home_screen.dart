import 'package:blinkit_home/providers/address_list_provider.dart';
import 'package:blinkit_home/providers/home_providers.dart';
import 'package:blinkit_home/widgets/round_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/category_widget.dart';
import '../widgets/deals_of_the_day_widget.dart';
import '../widgets/home_fab_button.dart';
import '../widgets/home_header_widget.dart';
import '../widgets/home_seach_widget.dart';
import '../widgets/recommended_widget_list.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/home_screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      lazy: false,
      builder: (BuildContext insideContext, __) {
        var provider = HomeProvider.of(insideContext);
        var addressProvider = AddressListProvider.of(context);
        return SafeArea(
          child: Scaffold(
            floatingActionButton: HomeFabButton(
              onCallback: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      insetPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                          child: Column(
                            children: [
                              _categorySection(insideContext),
                              const SizedBox(height: 50.0),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeHeaderWidget(addressData: addressProvider.selectedAddress),
                  const SizedBox(height: 12.0),
                  const HomeSearchWidget(),
                  if (provider.masterData?.lowestPriceModel?.itemsData != null &&
                      provider.masterData?.lowestPriceModel?.itemsData?.isNotEmpty == true) ...[
                    const SizedBox(height: 20.0),
                    RoundSectionWidget(
                      title: provider.masterData?.lowestPriceModel?.title,
                      itemsData: provider.masterData?.lowestPriceModel?.itemsData,
                    ),
                  ],
                  if (provider.masterData?.recommended?.itemsData != null &&
                      provider.masterData?.recommended?.itemsData?.isNotEmpty == true) ...[
                    const SizedBox(height: 20.0),
                    RecommendedListWidget(
                      title: provider.masterData?.recommended?.title,
                      itemsData: provider.masterData?.recommended?.itemsData,
                    ),
                  ],
                  if (provider.masterData?.moreToExplore?.itemsData != null &&
                      provider.masterData?.moreToExplore?.itemsData?.isNotEmpty == true) ...[
                    const SizedBox(height: 20.0),
                    RoundSectionWidget(
                      title: provider.masterData?.moreToExplore?.title,
                      itemsData: provider.masterData?.moreToExplore?.itemsData,
                    ),
                  ],
                  if (provider.masterData?.dealsOfTheDay?.itemsData != null &&
                      provider.masterData?.dealsOfTheDay?.itemsData?.isNotEmpty == true) ...[
                    const SizedBox(height: 20.0),
                    DealsOfTheDayWidget(
                      title: provider.masterData?.dealsOfTheDay?.title,
                      itemsData: provider.masterData?.dealsOfTheDay?.itemsData,
                    )
                  ],
                  _categorySection(insideContext),
                  const SizedBox(height: 50.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _categorySection(BuildContext context) {
    var provider = HomeProvider.of(context, listen: false);
    return Column(
      children: [
        if (provider.masterData?.groceryAndKitchen?.itemsData != null &&
            provider.masterData?.groceryAndKitchen?.itemsData?.isNotEmpty == true) ...[
          const SizedBox(height: 20.0),
          CategoryWidget(
            title: provider.masterData?.groceryAndKitchen?.title,
            itemsData: provider.masterData?.groceryAndKitchen?.itemsData,
          ),
        ],
        if (provider.masterData?.snacksAndNamkeen?.itemsData != null &&
            provider.masterData?.snacksAndNamkeen?.itemsData?.isNotEmpty == true) ...[
          const SizedBox(height: 40.0),
          CategoryWidget(
            title: provider.masterData?.snacksAndNamkeen?.title,
            itemsData: provider.masterData?.snacksAndNamkeen?.itemsData,
          ),
        ],
        if (provider.masterData?.beautyAndPersonalCare?.itemsData != null &&
            provider.masterData?.beautyAndPersonalCare?.itemsData?.isNotEmpty == true) ...[
          const SizedBox(height: 40.0),
          CategoryWidget(
            title: provider.masterData?.beautyAndPersonalCare?.title,
            itemsData: provider.masterData?.beautyAndPersonalCare?.itemsData,
          ),
        ],
        if (provider.masterData?.householdEssentials?.itemsData != null &&
            provider.masterData?.householdEssentials?.itemsData?.isNotEmpty == true) ...[
          const SizedBox(height: 40.0),
          CategoryWidget(
            title: provider.masterData?.householdEssentials?.title,
            itemsData: provider.masterData?.householdEssentials?.itemsData,
          ),
        ],
        const SizedBox(height: 40.0),
        const SizedBox(height: 50.0),
      ],
    );
  }
}
