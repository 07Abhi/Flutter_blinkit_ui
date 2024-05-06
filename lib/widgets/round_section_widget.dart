import 'package:blinkit_home/providers/home_providers.dart';
import 'package:flutter/material.dart';

import '../models/test.dart';
import 'item_round_widget.dart';

class RoundSectionWidget extends StatelessWidget {
  final String? title;
  final List<CatalogItemsDetailsResponse>? itemsData;

  const RoundSectionWidget({
    super.key,
    this.title,
    this.itemsData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.indigo,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          width: double.infinity,
          height: 150.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ItemRoundWidget(
                dataModel: itemsData?[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 20.0);
            },
            itemCount: itemsData?.length ?? 0,
          ),
        ),
      ],
    );
  }
}
